clc,clear,close all;
 x0=1:5;
y0=6:11;
 [x,y]=meshgrid(x0,y0);
% % ��������ɾ�����x0,y0��ά�Ƚ�����չ��
 z=x.^2+y.^3-4;
%    %��������ͼ
% b=size(z);
% c=randi(20,b) ;  %c������ɫ��ά�ȱ����z��ͬ
% figure(1)
% a=surf(x,y,z,c,'Linestyle','-.');
% a.FaceAlpha=0.5;  %͸����
% a.EdgeColor=[1 1 1];
% colorbar;   %����ɫ����
% figure(2)
% d=surfc(x,y,z) ; %���ƴ��еȸ��ߵ�����ͼ
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
% l=fmesh(k);  %������ά����ͼ

figure(8)
m=waterfall(x,y,z);  %������ά�ٲ�ͼ
figure(9)
n=ribbon(z)  ;  %������ά�ʺ�ͼ









