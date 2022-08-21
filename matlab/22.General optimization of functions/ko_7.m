clc,clear,close all;
% 多目标函数最优点达到问题fgoalattain
% fgoalattain(fun,x0,goal,weight,A,b,Aeq,beq,lb,ub,@con,opts).
% fun1=@(x) [sin((3*pi/2)*x),x.^2+1];
% x0=1;
% goal=[0 1.5];
% weight=[1 1];
% A=[];
% b=[];
% Aeq=[];
% beq=[];
% lb=[];
% ub=[];
% opts=[];
% [x,fval,beta]=fgoalattain(fun1,x0,goal,weight,...
%     A,b,Aeq,beq,lb,ub,opts)


fun2=@(x,y) [sin((3*pi/2)*x),(x+y).^2+cos(y*pi)];
objfun2=@(x) fun2(x(1),x(2));
x0=[1 1];
goal=[0 1.5];
weight=[1 1];
A=[1 1];
b=[1];
Aeq=[];
beq=[];
lb=[];
ub=[];
opts=[];
[x,fval,beta]=fgoalattain(objfun2,x0,goal,weight,...
    A,b,Aeq,beq,lb,ub,opts)



