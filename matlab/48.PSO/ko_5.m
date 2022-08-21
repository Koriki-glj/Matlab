clc;clear;close all;  
fun4=@(x,y,z) 6*x^2 + 5*y^2+ 50*z^2 +2*x*y + 12*x*z+ 22*y*z - 34*x - 16*y - 102*z + 77;
objfun4=@(x)fun4(x(1),x(2),x(3));
     % objfun4([2.06 0 0.77]);   %给一个初值
n=3;
lb=[0,0,0];
ub=[10 10 10];         %优先调整上界，不行再去调整粒子群的参数
% 调参
opts1=optimoptions('particleswarm');
opts2=optimoptions('fmincon','display','iter')  %可以选其他的常规优化函数，如fminunc ,fminsearch 等等
opts1.HybridFcn={@fmincon,opts2};  %混合优化
[x,fval]=particleswarm(objfun4,n,lb,ub,opts1)