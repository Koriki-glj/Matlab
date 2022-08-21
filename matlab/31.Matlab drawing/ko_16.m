clc,clear,close all;
 x0=1:5;
y0=6:11;
 [x,y]=meshgrid(x0,y0);
% % 将向量变成矩阵，以x0,y0的维度进行扩展。
 z=x.^2+y.^3-4;
%    %绘制曲面图
% b=size(z);
% c=randi(20,b) ;  %c代表颜色，维度必须和z相同
% figure(1)
% a=surf(x,y,z,c,'Linestyle','-.');
% a.FaceAlpha=0.5;  %透明度
% a.EdgeColor=[1 1 1];
% colorbar;   %把颜色条打开
% figure(2)
% d=surfc(x,y,z) ; %绘制带有等高线的曲面图
% figure(4)
% f=mesh(x,y,z);
% figure(5)
% g=meshc(x,y,z);
% figure(6)
% h=meshz(x,y,z);

% k=@(x,y) x.^2+y.^2;
% figure(3)
% j=fsurf(k);
% figure(7)
% l=fmesh(k);  %绘制三维网格图

figure(8)
m=waterfall(x,y,z);  %绘制三维瀑布图
figure(9)
n=ribbon(z)  ;  %绘制三维彩虹图









