clc,clear,close all;
% ����������Թ滮(MLP,Mixed-integer linear programming)
% intlinprog(f,intcon,A,b,Aeq,beq,lb,ub,x0,opts)
% intcon���������Լ��
f=[-1;-1];   %ϵ������
intcon=1;
A=[-5,11;-2,-3;2,0];
b=[22;-9;11];
Aeq=[];
beq=[];
lb=[];
ub=[];
x0=[1 0]
opts=[];
[x,fval]=intlinprog(f,intcon,A,b,Aeq,beq,lb,ub,x0,opts);
X=[x(1),x(2)]
fmax=-fval

















