clc,clear,close all;
% 非线性最小二乘问题（非线性数据拟合）
% min ||f(x)||^2
% [x,fval]=lsqnonlin(@fun,x0,lb,ub,opts)

x0=[1 1];
lb=[];
ub=[];
opts=[];
[x,fval]=lsqnonlin(@fun,x0,lb,ub,opts)
function y=fun(x)
k=1:5;
y=1+sin(k*x(1))-exp(k*x(2));
end