%����Լ���µķ����Ժ���
% clc;clear;close all;
% fun2=@(x,y)exp((x+y).^2)+(x-1).^2;
% objfun2=@(x)fun2(x(1),x(2));
% x0=[1,1];  %��ֵ
% A=[-1,-1];
% b=-1;
% Aeq=[1,2];
% beq=1.5;
% lb=[0.6,-inf];
% ub=[];
% [x,fval,ex]=fmincon(objfun2,x0,A,b,Aeq,beq,lb,ub)


%������Լ���µķ����Ժ���
clc;clear;close all;  
fun3=@(x,y)exp((x+y).^2)+(x-1).^2;
objfun3=@(x)fun3(x(1),x(2));
x0=[1,1];
A=[];
b=[];
Aeq=[];
beq=[];
lb=[0,0];
ub=[];
 opts=optimset('algorithm','active-set');%�޸��㷨
%  opts=optimoptions('fmincon','algorithm','active-set');%�������������������ֵ
[x,fval,ex]=fmincon(objfun3,x0,A,b,Aeq,beq,lb,ub,@confun,opts)

function [c,ceq]=confun(x)%�����ֲ�����
ceq1=x(1).^2+2*x(2).^2+3;   %ע����������Լ����д��
ceq2=x(1).^2+2*x(2).^2-1.5;
ceq=[ceq1;ceq2];
c=-x(1).^2-x(2).^2+1;
end
