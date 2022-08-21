clc;clear;close all;  
fun4=@(x,y,z) 6*x.^2 + 5*y.^2+ 50*z.^2 +2*x*y + 12*x*z+ 22*y*z - 34*x - 16*y - 102*z + 77;
objfun4=@(x)fun4(x(1),x(2),x(3));
     % objfun4([2.06 0 0.77]);   %给一个初值
n=3;
lb=[0,0,0];
ub=[];         %优先调整上界，不行再去调整粒子群的参数
% 调参
opts=optimoptions('particleswarm','SwarmSize',1000);%函数名，粒子群数量，数量值,粒子群数量(SwarmSize)
%opts=optimoptions('particleswarm','InitialSwarmSpan',5);%函数名，粒子群的范围，数量值,粒子群的范围(InitialSwarmSpan)
% 这几种调参方法可以组合使用
% opts=optimoptions('particleswarm','InitialSwarmMatrix',rand(100,3).*10);%函数名，粒子群创建，数量值(随机函数),粒子群创建 (InitialSwarmMatrix)
[x,fval]=particleswarm(objfun4,n,lb,ub,opts)