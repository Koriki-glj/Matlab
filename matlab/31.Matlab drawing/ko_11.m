clc,clear,close all;
% y=@(x)x.^2; %自定义函数
% a=fplot(y,[-10 20]); %指定范围，不指定就是-5到5.

%  b=fplot(@sin);  %预定义函数

% 参数绘制图形，其他函数可类比
% x=@(t)sin(t);
% y=@(t)cos(t);
% c=fplot(x,y,[-2*pi 2*pi]);

% 符号函数的办法创建
% syms x
% f=x.^2;
% d=fplot(f,'--r*');
% d.Color='g';

%这两个函数的区别
e=@(x,y) x.^2+y.^2-10;
figure(3)
f=fimplicit(e,[-2 2 -3 3]) ; %隐函数绘图,指定范围
% 绘制x.^2+y.^2-10=0的图形
z=@(x,y) x.^2+y.^2-10;
figure(4)
j=fsurf(z)
% 绘制 x.^2+y.^2-10=z的三维图形





% 分段函数
% y1=@(x)x.^2-1;
% y2=@(x)log(x);
% g=fplot(y1,[-1,1])
% hold on
% h=fplot(y2,[1,3])
% grid on




