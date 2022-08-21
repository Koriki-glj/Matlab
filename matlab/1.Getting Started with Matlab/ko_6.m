clc,clear,close all;
% % 元素重排reshape
% % 旋转rot90
% % 左右翻转fliplr
% % 上下翻转flipud
% % 翻转flip
% % 循环移位circshift
% % 排序sort
% % 按行排序sortrows
% % 判断是否排序issorted

a=[1 2 3 4 ;5 6 7 8];
b=reshape(a,4,2);  %重排规则：按线性序列的方式重排
c=rot90(a);
d=fliplr(a);
e=flipud(a);
h=circshift(a,[1,2]);%第二个输入参数是行数与列数，数字表示要移位的量
i=sort(a) ; %默认按列进行升序
l=sort(a,'descend') ;%按列进行降序
k=issorted(a) ; %默认：判断按列是否升序排列
m=issorted(l,'descend');   %判断按列是否降序排列
o=magic(3);
j=sortrows(o,1); %把每一行作为整体，进行升序排列,1代表把每行的第一个元素当作参照物
p=sortrows(o,3);

% % flip的输入为：要操作的矩阵，指定的维度.
% % 维度1代表上下翻转，维度2代表左右翻转
f=flip(a,1);
g=flip(a,2);


