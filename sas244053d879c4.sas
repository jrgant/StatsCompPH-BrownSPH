OPTIONS NONUMBER NODATE PAGESIZE = MAX FORMCHAR = '|----|+|---+=|-/<>*' FORMDLIM=' ';title;

data sim;
	call streaminit(341324);
	do i=1 to 500;
		l = rand('Bernoulli', 0.3);
		m = rand('Bernoulli', 0.6);
		x = rand('Bernoulli', 0.3 + 0.2 * l + 0.2 * m);
		y = rand('Bernoulli', 0.05 + 0.2 * l + 0.4 * m + 0.05 * x);
		output;
	end;
run;

proc print data=sim(obs=20); run;

