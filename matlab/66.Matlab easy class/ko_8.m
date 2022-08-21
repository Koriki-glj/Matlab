% 常微分方程的数值解
clc,clear,close all;
[x,y]=ode45(@ode,[0 5],[1 1])
a=plot(x,y(:,1))

%方程，区间，初始值
function dy=ode(x,y)
dy=zeros(2,1); %y1和y2同属于y,将他们的导数全部初始化为0
dy(1)=y(2);
dy(2)=1-2*y(1)+3*y(2);
end