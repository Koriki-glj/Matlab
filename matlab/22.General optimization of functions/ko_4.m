%线性约束下的线性目标函数
clc;clear;close all;
f=[-60;-120];   %系数向量
A=[9,4;3,10;4,5;-1 0;0 -1];
b=[360;300;200;0;0];
Aeq=[];
beq=[];
lb=[];
ub=[];
opts=optimset('display','iter');
[x,fval]=linprog(f,A,b,Aeq,beq,lb,ub,opts);
X=x
fmax=-fval

clc,clear,close all;
f=[-2 -3];   %系数向量
A=[2,-1;-1,1;-1,-1];
b=[2;1;-1];
Aeq=[];
beq=[];
lb=[];
ub=[];
opts=optimset('display','iter');
[x,fval]=linprog(f,A,b,Aeq,beq,lb,ub,opts);
X=x
fmax=-fval

% clc;clear;close all;
% f=[1 ;1 ;1 ;1 ;1];
% A=[-1 -1 0 0 0;-1 0 -2 -1 0;0 -2 -1 -2 -4;-1 0 0 0 0;0 -1 0 0 0;0 0 -1 0 0;0 0 0 -1 0;0 0 0 0 -1];
% b=[-100;200;400;0;0;0;0;0];
% Aeq=[];
% beq=[];
% lb=[0;0;0;0;0];
% ub=[];
% opts=optimset('display','iter');
% [x,fval]=linprog(f,A,b,Aeq,beq,lb,ub,opts)


