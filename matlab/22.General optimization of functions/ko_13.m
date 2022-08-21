clc,clear,close all;
% 非线性函数拟合问题Isqcurvefit
% min ||F(a,xdata)-ydata||^2
% F是目标函数，a是系数向量
% f(x)=a1x^2+a2x+a3+a4exp(a5x)
% a0是系数初始值

fun=@(a,xdata) a(1)*xdata.^2+a(2)*xdata+a(3)+a(4)*exp(a(5)*xdata);
a0=[0 0 0 0 0];
xdata=randi(20,1,10)%产生20以内的1行10列的伪随机整数
ydata=xdata.^2+xdata+20+0.5*exp(0.1*xdata)+rand;
lb=[];
ub=[];
opts=[];
[a,fval]=lsqcurvefit(fun,a0,xdata,ydata,lb,ub,opts)













