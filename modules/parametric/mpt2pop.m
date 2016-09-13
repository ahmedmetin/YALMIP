function POP_problem = mpt2pop(Matrices)

n = length(Matrices.free_var);
varcon = setdiff(1:n,Matrices.binary_var_index);
varbin = Matrices.binary_var_index;

POP_problem.Ht = full(Matrices.F)';
POP_problem.Qt = full(Matrices.Y);
POP_problem.Q = full(Matrices.H);
POP_problem.A = full(Matrices.G(:,varcon));
POP_problem.E = full(Matrices.G(:,varbin));
POP_problem.F = full(Matrices.E);
POP_problem.b = full(Matrices.W);
POP_problem.c = full(Matrices.Cf');
POP_problem.ct = full(Matrices.Cx');
POP_problem.cc = full(Matrices.Cc);
POP_problem.Aeq = full(Matrices.Aeq(:,varcon));
POP_problem.Eeq = full(Matrices.Aeq(:,varbin));
POP_problem.Feq = full(Matrices.Beq);
POP_problem.beq = full(Matrices.beq);
POP_problem.CRA = full(Matrices.bndA);
POP_problem.CRb = full(Matrices.bndb);

POP_problem.Xmin = full(Matrices.lb(Matrices.free_var));
POP_problem.Xmax = full(Matrices.ub(Matrices.free_var));

POP_problem.Tmin = full(Matrices.lb(Matrices.param_var));
POP_problem.Tmax = full(Matrices.ub(Matrices.param_var));

