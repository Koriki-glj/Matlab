clc,clear,close all;
% % 关系运算(relational)使用“小于”，“大于”和“不等于”等运
% % 算符定量地比较运算数，比较的结果是一个逻辑数组，在关系为真的
% % 位置显示1
% % 涉及到空矩阵的关系运算结果也是空的逻辑数组
% % 关系运算的结果是逻辑数组
% % 判断相等用 == 运算符，而不是 = 
a=[3 4 3 7];
b=[3 6 7 1];
c=a>b;
d= a==b ; %对应元素是否恒等于
e= a~=b  ; %对应元素是否不等于
f= []==2   ;%空矩阵是否等于2.

% % 常用组合命令
% % 就是求一个数组中满足特定条件的元素
g= a>2&a<4;   %满足特定条件所形成的逻辑数组
h=a(g);   %然后用此条件索引a中符合的元素
a(a>2&a<4)=10 ; %给符合此逻辑数组条件的元素重新赋值为10

i=find(b>3&b<7) ; %返回符合条件的线性索引值，即符合此条件的元素在第几个位置
j=b(i) ; %用该此索引值返回该位置的数组元素


























