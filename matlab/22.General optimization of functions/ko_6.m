clc,clear,close all;
% ������Լ����Ԫ�����Ժ����Ż����⣨�����������Լ��������
% fseminf(objfun,x0,n,@con,A,b,Aeq,beq,lb,ub,opts)
% n�ǰ�����Լ����������con�ǰ�����Լ��
% fun1=@(x) x.^2;
% x0=1;
% n=1;
% A=[];
% b=[];
% Aeq=[];
% beq=[];
% lb=[];
% ub=[];
% opts=[];
% [x,fval]=fseminf(fun1,x0,n,@con,A,b,Aeq,beq,lb,ub,opts)
% function  [c,ceq,k,s]=con(x,s)
% c=[];
% ceq=[];
% t=0:pi/100:1;
% k=x+2-exp(t-2);
% end
% % s�ǲ��������������Լ����c,ceq�ǺͰ�����Լ��k���ص�һ��ģ���û��д����������������

fun2=@(x,y) x.^2+y.^2;
objfun2=@(x)fun2(x(1),x(2));
x0=[0 0];
n=2;
A=[];
b=[];
Aeq=[];
beq=[];
lb=[];
ub=[];
opts=[];
[x,fval]=fseminf(objfun2,x0,n,@coj,A,b,Aeq,beq,lb,ub,opts)
function  [c,ceq,k1,k2,s]=coj(x,s)
c=[];
ceq=[];
t=0:pi/100:1;
k1=x(1)+2-exp(t-2);
k2=x(2)+2-sin(t);
end

