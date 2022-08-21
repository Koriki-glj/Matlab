clc,clear,close all;
% % 求和sum
% % 乘积prod
% % 舍入round
% % 向-inf舍入floor
% % 向inf舍入ceil
% % 向0舍入fix
% % 模操作mod
% % 加plus
% % 减minus
% % 乘times
% % 除rdivide
% % 矩阵乘法mtimes
% % 矩阵左除mldivide

a=[1 2 3;4 5 6]
b=sum(a);  %当输入为矩阵时，按列进行求和
e=prod(a) ;  %当输入为矩阵时，按列进行乘积

%输入单个向量时，会将所有元素求和
c=sum([1 2 3 4]);
d=sum([1 2 3 4]');
f=round(3.8);  %四舍五入
g=floor(3.9);
h=ceil(2.1);
i=fix(5.9);
% % 求整除后的余数也称为模操作
j=mod(5,2) ; %%第一个输入参数是被除数,第二个输入参数是除数

% % 注意区别
k=mod(-5,2)
l=rem(-5,2) %也是求整除后的余数









