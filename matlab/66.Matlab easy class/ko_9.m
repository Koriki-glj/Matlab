% 求方程的整数解
% 使用整数线性规划的方式
% intlinprog(fun,整数约束,A,b,Aeq,beq,lb,ub)
%改变上下限答案可不同
clc,clear,close all;
fun=[1 1 1];
zsys=[1 2 3];
A=[];
b=[];
Aeq=[2 3 4];
beq=30;
lb=[1 2 3];
ub=[30 30 30];
[x,fval]=intlinprog(fun,zsys,A,b,Aeq,beq,lb,ub)

% 实际问题整数线性规划
clc,clear,close all;
f=-[15 45 100 70 50 15 100 90 20 10];
A=[200 350 500 430 320 120 700 420 250 100];
b=4500;
lb=zeros(10,1);
[x,fval]=intlinprog(f,1:10,A,b,[],[],lb,[])
