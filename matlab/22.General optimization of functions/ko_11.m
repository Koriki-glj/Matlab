clc,clear,close all;
% 线性最小二乘问题
% min (1/2)||Cx-d||^2
% 给出一个目标函数，要使(1/2)||Cx-d||^2=fun。||Cx-d||是范数的意思
% [x,fva]=lsqlin(C,d,A,b,Aeq,beq,lb,ub,x0,opts)
% C=[1 0;0 1];
% d=[0 0];
% A=[-1,0;1,-1;2,-1];
% b=[-1;-1;2];
% Aeq=[];
% beq=[];
% lb=[];
% ub=[];
% x0=[0 0];
% opts=[];
% [x,fval]=lsqlin(C,d,A,b,Aeq,beq,lb,ub,x0,opts)

C=[1 2 3
-1 1 5
2 0 4];
d=[3;2;8];
[x,fval]=lsqlin(C,d)


















