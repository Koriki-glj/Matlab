clc,clear,close all;
% 给定一组数据，如何变化，让小的更小，大的更大；
x=1:5;
b=var(x)
y=x.^3;
%将y归一化，最大值减去最小值是跨度
t=y./sum(y)*(max(y)-min(y))
c=var(t)