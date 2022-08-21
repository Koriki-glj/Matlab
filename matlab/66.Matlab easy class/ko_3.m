clc,clear,close all;
% ²ÎÊý»æÍ¼
% x=@(u)(1+cos(u)).*cos(u);
% y=@(u)(1+cos(u)).*sin(u);
% z=@(u)sin(u);
% a=fplot3(x,y,z)

% Òþº¯Êý»æÍ¼
fun=@(x,y,a)x.^2/a.^2+y.^2/(25-a.^2)-1
a=10;
objfun=@(x,y)fun(x,y,a) 

b=fimplicit(objfun,[-30 30])
grid on