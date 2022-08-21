clc,clear,close all;
% % 长度length
% % 元素数目numel
% % 维度ndims

a=[1 2 3 4;5 6 7 8];
b=length(a);  %取行数和列数中的最大值定义矩阵的长度
c=a' ;  %矩阵的转置
e=numel(a);
h=ndims (a);

f=ndims (a(1,:)) ;%计算第一列的维度
g=ndims (a(1,1));  %计算第一行第一列元素的维度

% % 数组的最小维度就是2！！



