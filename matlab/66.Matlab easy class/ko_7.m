clc,clear,close all;
%һ���������еĸ�
fun=@(x)x.^2+4*sin(5*x);
fplot(fun,[-4 4])
grid on
a=fzero(fun,0)
b=fzero(fun,1)
c=fzero(fun,-0.5)
d=fzero(fun,0.5)
e=fzero(fun,[-2 -1.5])
f=fzero(fun,[-1.5 -1])
%�Ȼ�ͼ����fzeroȥѰ��

% syms x
% eqn=x.^2+4*sin(5*x)==0;
% as=vpasolve(eqn,x)