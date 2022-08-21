clc,clear,close all;
% % 双精度double
% % 单精度single
% % 判断浮点型isfloat
% % 取值范围realmax/realmin
% % 精度eps
% % 浮点型分为单精度浮点型和双精度浮点型
% % Matlab的默认类型是双精度浮点型
m=class(0.2);
n=isfloat(2.22);
a=double(4.25);
b=single(44.1);

c=realmax('double');
d=realmin('double');

e=realmax('single');
f=realmin('single');

% % 浮点型与整型的转换方法
% % 每一个数据类型的创建方法,同时也是他的转化方法
g=int8(33);
h=double(g);
i=single(h);

j=sin(pi) ;  %因为有精度，所以不等于0
k=sin(sym(pi)); %用符号运算的方式取消精度

l=eps ; %这个函数默认的是求1附近的精度,即相对于1而言，在这个范围内，都会被认为等于1
o=eps(100);  %这是100附近的精度


