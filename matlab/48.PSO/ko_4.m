clc;clear;close all;  
fun4=@(x,y,z) 6*x^2 + 5*y^2+ 50*z^2 +2*x*y + 12*x*z+ 22*y*z - 34*x - 16*y - 102*z + 77;
objfun4=@(x)fun4(x(1),x(2),x(3));
        % objfun4([2.06 0 0.77]);   %给一个初值
n=3;
lb=[0,0,0];
ub=[10 10 10];         %优先调整上界，不行再去调整粒子群的参数
% 调参
opts=optimoptions('particleswarm');
opts.MaxStallIterations=15;     %失速记录
figure(1)
opts.PlotFcn=@pswplotbestf;   %绘图函数，指定粒子群的全局最优值与迭代的关系
opts.PlotFcn=@koriki
[x,fval]=particleswarm(objfun4,n,lb,ub,opts)

% 构建局部函数
function stop=koriki(v,s)     %v是速度，s代表状态，这个s好像没有用到
stop=false;    %让每次迭代不终止
x=v.swarm;      %v里面的参数swarm代表所有的粒子位置数据
figure(2)
plot3(x(:,1),x(:,2),x(:,3),'r*');
drawnow;     %把每次迭代过程绘制出来，这是一个函数
pause(0.1);   %延时0.秒
axis([0 10, 0 10, 0 10])  %限制坐标轴的范围
end


% 为甚么给了幕布1，却不绘制粒子群的全局最优值与迭代关系的图像呢？