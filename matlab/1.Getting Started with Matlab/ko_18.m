clc,clear,close all;
% % 无穷大inf
% % 非值nan
% % 判读无穷大isinf
% % 判断非值isnan
% % 用特殊值“NaN”表示既不是实数也不是复数的“非数字”的值
% % matlab里，inf与inf相等判断为真，nan与nan相等判断为假

a=realmax('double');

%产生无穷大的办法
b=a+1e300;
c=Inf;
d=3/0;
e=1e309;

f=exp(1000);
g=isinf(f)  ; %判断是不是无穷大
k= inf==inf;

% % 一般进行判断时都可以用is+函数名的方式！！！
% % 无穷大参与的任何运算结果呢,基本上都是无穷大,但是有例外

% 结果为NaN，表明结果不是一个数字，已经不是一个数值可以表达的了
h=inf/inf;
i=0/0;
j= nan==nan;

% % 涉及到NaN的所有逻辑运算，或者关系运算,得出来的逻辑结果基本上都是0，但是有例外
l= nan~=nan;







