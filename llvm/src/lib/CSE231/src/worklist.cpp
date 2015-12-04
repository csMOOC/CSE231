#include "../include/worklist.h"

/*
 * build the graph relations
 */
pair<map<BasicBlock*, list<BasicBlock*> >, map<BasicBlock*, list<BasicBlock*> > > buildRelation(Function &F) {
	map<BasicBlock*, list<BasicBlock*> > pre;
	map<BasicBlock*, list<BasicBlock*> > post;

	for(Function::iterator bb = F.begin(); bb != F.end(); ++bb) {
		TerminatorInst *ti = bb->getTerminator();
		for(unsigned int i = 0;i < ti->getNumSuccessors();i++) {
			BasicBlock *next = ti->getSuccessor(i);
			pre[next].push_back(bb);
			post[bb].push_back(next);
		}
	}
	return make_pair(pre, post);
}


/*
 * deal with non-terminator instructions
 */
vector<LatticeNode*> nonTerInsFlowFun(FlowFunction &flow, Instruction *I, vector<LatticeNode*> in) {
	vector<LatticeNode*> out;

	// Assignment Expression Flow Function
	if(isa<AEFlowFunction>(&flow)) {
		AEFlowFunction* f = cast<AEFlowFunction>(&flow);
		out = (*f)(I, in);

	// Pointer Analysis Flow Function
	} else if(isa<PAFlowFunction>(&flow)) {
		PAFlowFunction* f = cast<PAFlowFunction>(&flow);
		out = (*f)(I, in);

	// Constant Propagation Flow Function
	} else if(isa<CPFlowFunction>(&flow)) {
		CPFlowFunction * f = cast<CPFlowFunction>(&flow);
		out  = (*f)(I, in);
	} else {
		errs() << "Undefined flow function";
	}

	return out;
}


/*
 * deal with terminator instructions
 */
map<Value*, LatticeNode*> TerInsFlowFun(FlowFunction &flow, Instruction* I, vector<LatticeNode*> in,map<Value*, LatticeNode*> outedge){
    map<Value*, LatticeNode*> outputs;

	// Assignment Expression Flow Function
	if (isa<AEFlowFunction>(&flow)) {
    		AEFlowFunction* f = cast<AEFlowFunction>(&flow);
		vector<LatticeNode*> res = (*f)(I, in);
		for(auto e : outedge) {
			outputs[e.first] = res[0];
		}
	
	// Pointer Analysis Flow Function
	} else if(isa<PAFlowFunction>(&flow)) {
    		PAFlowFunction* f = cast<PAFlowFunction>(&flow);
		vector<LatticeNode*> res = (*f)(I, in);
		for(auto e : outedge) {
			outputs[e.first] = res[0];
		}
	
	// Constant Propagation Flow Function
	} else if(isa<CPFlowFunction>(&flow)) {
		CPFlowFunction* f = cast<CPFlowFunction>(&flow);
		vector<LatticeNode*> res = (*f)(I, in);

		for(auto e : outedge) {
			outputs[e.first] = res[0];
		}

	} else {
		errs() << "Undefined flow function\n";
	}

	return outputs;
}
	

/*
 *data analysis in a given block
 */
bool BasicBlockFlowAnalysis(BasicBlock *bb, FlowFunction &f, map<pair<BasicBlock*, BasicBlock*>, LatticeNode*>&edgesInfo, list<BasicBlock*> &pres, list<BasicBlock*>&posts, LatticeNode *start) {
	vector<LatticeNode*> incomingEdges;
	map<Value*, LatticeNode*> outcomingEdges;
	for(auto next : posts) outcomingEdges[next] = 0;
	
	//Build the in-coming infos
	if(pres.empty()) incomingEdges.push_back(start);
	else {
		for(auto previous : pres) {
			auto edge = make_pair(previous, bb);
			incomingEdges.push_back(edgesInfo[edge]);
		}
	}

	//apply on non-terminator instructions
	for(auto instr = bb->begin(); !instr->isTerminator(); ++instr)
		incomingEdges = nonTerInsFlowFun(f, instr, incomingEdges);
	//apply on terminator instruction
	outcomingEdges = TerInsFlowFun(f, bb->getTerminator(), incomingEdges, outcomingEdges);
	
	bool modified(false);
	for(auto next : posts) {
		auto edge = make_pair(bb, next);
		LatticeNode* cur = outcomingEdges[next];
		modified = modified || (!cur->equal(edgesInfo[edge])); 
		edgesInfo[edge] = cur;	//update infos
	}
	return modified;
}


/*
 * join a branch
 */
vector<LatticeNode*> branchJoin(std::vector<LatticeNode*> in){
	while (in.size() > 1) {
      	LatticeNode *in1 = in.back();
      	in.pop_back();
      	LatticeNode *in2 = in.back();
      	in.pop_back();
      	LatticeNode* jnode = in1->join(in2);
      	in.push_back(jnode);
    }
	return in;
}


map<Instruction*, LatticeNode*> dataFlowAnalysis(Function &F, FlowFunction &f, LatticeNode *start) {
	
	pair<map<BasicBlock*, list<BasicBlock*> >, map<BasicBlock*, list<BasicBlock*> > > relationsMap = buildRelation(F);
	map<BasicBlock*, list<BasicBlock*> > preMap = relationsMap.first;
	map<BasicBlock*, list<BasicBlock*> > postMap = relationsMap.second;
	
	//worklist data structure
	list<BasicBlock*> worklist;
	map<pair<BasicBlock*, BasicBlock*>, LatticeNode*> edgesInfo;

	//Initialize all the nodes and push to worklist
	for(Function::iterator bb = F.begin(); bb != F.end(); ++bb) {
		list<BasicBlock *> nexts = postMap[bb];
		for(auto next : nexts) {
			pair<BasicBlock*, BasicBlock*> edge = make_pair(bb, next);
			LatticeNode bottom(start->lkind, true, false);
			edgesInfo[edge] = &bottom;
		} 
		worklist.push_back(bb);
	}
	
	//run until worklist is empty, that is to say we are in a fixed point.
	while(!worklist.empty()) {
		BasicBlock *bb = worklist.front();
		worklist.remove(bb);
		list<BasicBlock *> pres = preMap[bb];
		list<BasicBlock *> posts = postMap[bb];
		bool modified = BasicBlockFlowAnalysis(bb, f, edgesInfo, pres, posts, start);
		if(modified) {
			for(auto next : posts)
				worklist.push_back(next);
		}
	}
	
	//errs() << "END : Basic Block analysis finished \n";

	//Build result for each instruction
	map<Instruction*, LatticeNode*> result;
	
	for(auto bb = F.begin(); bb != F.end(); ++bb) {
		
		list<BasicBlock*> pres = preMap[bb];
      		vector<LatticeNode*> in;
      
		if (pres.empty()) in.push_back(start);
      		else { 
        		for (auto pre : pres) {
          			auto edge = make_pair(pre, bb);
          			in.push_back(edgesInfo[edge]);
        		}
      		}

		//Then, iterating each instructions
		for(auto I = bb->begin(); !I->isTerminator(); ++I) {
			in = branchJoin(in);
			result[I] = in[0];
			in = nonTerInsFlowFun(f, I, in);
		}

		result[bb->getTerminator()] = in[0];
	}
	
	return result;
}
