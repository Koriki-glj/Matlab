clc,clear,close all;
% 二次规划问题(QP,quadratic programming)
% min (1/2)x^T Hx+f^Tx
% H是二次项的系数矩阵
% f是一次项的系数矩阵
% [x,fval]=quadprog(H,f,A,b,Aeq,peq.lb,ub,x0,opts)
% eig判断矩阵是否正定,所得特征值大于0即正定
% 变量为列向量
H=[2 0;0 2];
f=[0 0];
A=[-1,0;1,-1;2,-1];
b=[-1;-1;2];
Aeq=[];
beq=[];
lb=[];
ub=[];
x0=[ ];
opts=[];
[x,fval]=quadprog(H,f,A,b,Aeq,beq,lb,ub,x0,opts)

% 此方法也可以算出结果
% fun2=@(x,y) x.^2+y.^2;
% objfun2=@(x)fun2(x(1),x(2));
% x0=[0 0];  %初值
% A=[-1,0;1,-1;2,-1];
% b=[-1;-1;2];
% Aeq=[];
% beq=[];
% lb=[];
% ub=[];
% [x,fval,ex]=fmincon(objfun2,x0,A,b,Aeq,beq,lb,ub)

% syms x y   %定义符号变量
% simplify([x,y]*H*[x;y])  %对表达式进行化简