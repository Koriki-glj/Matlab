clc,clear,close all;
% ���ι滮����(QP,quadratic programming)
% min (1/2)x^T Hx+f^Tx
% H�Ƕ������ϵ������
% f��һ�����ϵ������
% [x,fval]=quadprog(H,f,A,b,Aeq,peq.lb,ub,x0,opts)
% eig�жϾ����Ƿ�����,��������ֵ����0������
% ����Ϊ������
H=[2 0;0 2];
f=[0 0];
A=[-1,0;1,-1;2,-1];
b=[-1;-1;2];
Aeq=[];
beq=[];
lb=[];
ub=[];
x0=[ ];
opts=[];
[x,fval]=quadprog(H,f,A,b,Aeq,beq,lb,ub,x0,opts)

% �˷���Ҳ����������
% fun2=@(x,y) x.^2+y.^2;
% objfun2=@(x)fun2(x(1),x(2));
% x0=[0 0];  %��ֵ
% A=[-1,0;1,-1;2,-1];
% b=[-1;-1;2];
% Aeq=[];
% beq=[];
% lb=[];
% ub=[];
% [x,fval,ex]=fmincon(objfun2,x0,A,b,Aeq,beq,lb,ub)

% syms x y   %������ű���
% simplify([x,y]*H*[x;y])  %�Ա��ʽ���л���