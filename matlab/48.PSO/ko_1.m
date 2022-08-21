%1.
% clc;clear;close all;  
% fun5=@(x)x.^2+3*sin(2*x);  %建立匿名函数
% figure(5)
% fplot(fun5)
% n=1;
% lb=[];
% ub=[];
% opts=[];
% [x,fval]=particleswarm(fun5,n,lb,ub,opts)     %使用粒子群全局优化
% % [x,fval]=fminunc(fun5,0)       %常规优化
% % [x,fval]=fminsearch(fun5,0)   %常规优化
% hold on
% plot(x,fval,'r*')



%2.
% clc;clear;close all;  
% fun6=@(x,y) x.^2+y.^2+3*sin(2*x)+3*sin(2*y);
% figure(6)
% fsurf(fun6)  %fsurf与fmesh为绘制多元函数命令，fplot为绘制一元函数命令
% objfun6=@(x) fun6(x(1),x(2));
% n=2;
% lb=[];
% ub=[];
% opts=[];
% [x,fval]=particleswarm(objfun6,n,lb,ub,opts)
% hold on        %多图共存
% plot3(x(1),x(2),fval,'ro')%绘制三维图
