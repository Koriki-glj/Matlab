clc,clear,close all;
% % 判断空矩阵isempty
% % 判断标量isscalar
% % 判断向量isvector
% % 空矩阵 有一个或多个等于零的维度(0x0,0x1,1×0)
% % 标量  维度为l×1的矩阵，在matlab中显示为单个实数或复数
% % 向量  维度为1×n或n×1的矩阵，在matlab中显示为一个行或一个列

a=[];
b=isempty(a);
i=ndims(a) ;  %空矩阵的维度也是2
% % 还可以用函数创建空矩阵
j=zeros(0,1) ; %行或列为零即可

c=1;
d=isscalar(c);


e=[1 2 3;4 5 6];
f=isvector(e);
g=[3 5 7];
h=isvector(g);