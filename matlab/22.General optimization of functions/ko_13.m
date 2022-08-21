clc,clear,close all;
% �����Ժ����������Isqcurvefit
% min ||F(a,xdata)-ydata||^2
% F��Ŀ�꺯����a��ϵ������
% f(x)=a1x^2+a2x+a3+a4exp(a5x)
% a0��ϵ����ʼֵ

fun=@(a,xdata) a(1)*xdata.^2+a(2)*xdata+a(3)+a(4)*exp(a(5)*xdata);
a0=[0 0 0 0 0];
xdata=randi(20,1,10)%����20���ڵ�1��10�е�α�������
ydata=xdata.^2+xdata+20+0.5*exp(0.1*xdata)+rand;
lb=[];
ub=[];
opts=[];
[a,fval]=lsqcurvefit(fun,a0,xdata,ydata,lb,ub,opts)













