%1.
% clc;clear;close all;  
% fun5=@(x)x.^2+3*sin(2*x);  %������������
% figure(5)
% fplot(fun5)
% n=1;
% lb=[];
% ub=[];
% opts=[];
% [x,fval]=particleswarm(fun5,n,lb,ub,opts)     %ʹ������Ⱥȫ���Ż�
% % [x,fval]=fminunc(fun5,0)       %�����Ż�
% % [x,fval]=fminsearch(fun5,0)   %�����Ż�
% hold on
% plot(x,fval,'r*')



%2.
% clc;clear;close all;  
% fun6=@(x,y) x.^2+y.^2+3*sin(2*x)+3*sin(2*y);
% figure(6)
% fsurf(fun6)  %fsurf��fmeshΪ���ƶ�Ԫ�������fplotΪ����һԪ��������
% objfun6=@(x) fun6(x(1),x(2));
% n=2;
% lb=[];
% ub=[];
% opts=[];
% [x,fval]=particleswarm(objfun6,n,lb,ub,opts)
% hold on        %��ͼ����
% plot3(x(1),x(2),fval,'ro')%������άͼ
