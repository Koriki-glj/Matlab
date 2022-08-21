clc;clear;close all;  
fun4=@(x,y,z) 6*x.^2 + 5*y.^2+ 50*z.^2 +2*x*y + 12*x*z+ 22*y*z - 34*x - 16*y - 102*z + 77;
objfun4=@(x)fun4(x(1),x(2),x(3));
       % objfun4([2.06 0 0.77]);   %给一个初值，可是一般不会知道初值的范围
n=3;
lb=[0,0,0];
ub=[5 5 5];         %优先调整上界，不行再去调整粒子群的参数
 %调参
 opts=optimoptions('particleswarm');
opts.MinNeighborsFraction=0.8;   %领域，百分之百计
 opts.InertiaRange=[0.1 0.4];  %惯性权重的范围
 opts.SelfAdjustmentWeight=0.8;    %个体学习因子
opts.SocialAdjustmentWeight=0.8;   %群体学习因子
[x,fval]=particleswarm(objfun4,n,lb,ub,opts)
plot3(x(:,1),x(:,2),x(:,3),'r*');   %绘制三元函数，使用向量的形式代替x的三个分量；绘制的这个点就是全局最优粒子的位置


%问题  怎么根据三元的匿名函数绘制其图像