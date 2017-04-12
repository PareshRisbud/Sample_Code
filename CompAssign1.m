clc;close all;clear all;
f = [0;0;0;1;1;1];
A = [1 0 0 -1 0 0;5 0 0 -1 0 0;0 2 0 0 -1 0;0 6 0 0 -1 0;0 0 4 0 0 -1;0 0 7 0 0 -1];
b = [0;400;0;800;0;600];
Aeq = [1 1 1 0 0 0];
beq = 600;
lb = zeros(3,1);
ub = 1000 * ones(3,1);
[x,fval,exitflag,output,lambda] = linprog(f,A,b,Aeq,beq,lb,ub)