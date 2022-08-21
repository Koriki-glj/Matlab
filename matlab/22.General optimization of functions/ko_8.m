clc,clear,close all;
% 多目标函数最大值的最小值问题fminimax
% [x,fval]=fminimax(Fun,x0,A,b,Aeq,beq,lb,ub,@con,opts)
f1=@(x)sin(x)+cos(x);
f2=@(x)sin(x)-cos(x);
f3=@(x)max(f1(x),f2(x));
fun=@(x)[f1(x),f2(x)];
hold on
fplot(f1,[-6 6])
fplot(f2,[-6 6])
fplot(f3,[-6 6],'marker','o')
hold off


x0=-1;
A=[];
b=[];
Aeq=[];
beq=[];
lb=[];
ub=[];
opts=[];
[x,fval]=fminimax(fun,x0,A,b,Aeq,beq,lb,ub,[],opts)