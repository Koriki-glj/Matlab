clc,clear,close all;
% 半无限约束多元非线性函数优化问题（带颜外参数的约束条件）
% fseminf(objfun,x0,n,@con,A,b,Aeq,beq,lb,ub,opts)
% n是半无限约束的数量，con是半无限约束
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
% % s是采样间隔，非线性约束从c,ceq是和半无限约束k返回到一块的，并没有写到函数的输入项里

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

