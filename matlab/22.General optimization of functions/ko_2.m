% 求多变量无约束非线性函数的最值  

% clc;clear;close all;
% fun1=@(x,y) (x-1).^2+y.^2+5;  %使用匿名函数的形式定义
% objfun1=@(x)fun1(x(1),x(2));    %把x当作下x（1）,把y当作x(2)
% x0=[-1,1]; %赋予初值
% opts=[];
% [x,fval,ex,msg]=fminsearch(objfun1,x0,opts)
% % [x,fval,ex,msg]=fminunc(objfun1,x0)   %ex=1说明收敛良好，答案可信
%%任何一个优化函数的输入项最后一个都是优化选项

%%fminsearch直接法寻优，fminunc用导数型的算法寻优，二者算法不同




clc;clear;close all;
 x0=[1,1,1];
 opts=optimoptions('fminunc','SpecifyObjectiveGradient',true);
 [x,fval,ex,msg]=fminunc(@objfun2,x0,opts)
 function  [fun2,gfun2]=objfun2(x) %体会这种多元函数的局部写法
 fun2=exp((x(1)+x(2)).^2)+(x(1)-1).^2+2*sin(x(3));
 g1=exp((x(1)+x(2)).^2)*2.*(x(1)+x(2))+2*(x(1)-1);
 g2=exp((x(1)+x(2)).^2)*2.*(x(1)+x(2));
 g3=2*cos(x(3));
 gfun2=[g1;g2;g3];
 end
 
 %%局部函数返回了两个值：函数与梯度。g1,g2,g3分别是x,y,z的梯度，梯度就是求偏导。
 
 
 