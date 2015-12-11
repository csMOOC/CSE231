LLVM, with no optimizations, treats local variables as stack-allocated variables, so reads and writes from those variables are translated to memory loads and stores, respectively.
We did not run -mem2reg pass, because this pass has already completed pointer analysis. So we close this pass and run our analysis.

We treat each variable as pointer.

Be careful with temporary registers.

x = 3
x = y
x = &y
*x = y
x = *y


##CASE1

	int a = 1;
	int b = 2;
	int o = b;
	int *c = &a;
	int **d = &c;
	int *f = &o;
	f = *d;
	return 0;

##result

	retval->0
	a->1
	b->2
	o->2
	c->a
	d->c
	f->a(previously, f->o)
	Temporary Register 0->2
	Temporary Register 1->c
	Temporary Register 2->a

##branch case

	int a = 1;
	int *c = &a;
	int *d;
	if(a > 1) {
		d = &a;
	} else {
		d = &a;
	}	
	return 0;

##result

	retval->0
	a->1
	c->a
	d->a
	Temporary Register 0->1
