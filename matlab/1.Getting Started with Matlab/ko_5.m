% % 通过指定矩阵索引修改、添加或删除相应元素
% % 索引超出矩阵范围的元素会报错，但可以赋值
% % 删除元素后的矩阵仍然要保持矩形，否则报错
% % 必要时,对超出矩阵范围的索引赋值需要预分配内存
clc,clear,close all;
a=[1 2 3;4 5 6;7 8 9];
b=[1 2 3;4 5 6;7 8 9];
% % 矩阵的修改

% %组合赋值
a(2,2)=10;    
a(3:4,4:5)=[1 2;3 4];

  %线性赋值
a(2)=12 ; 

a(3,4)=16 ;  %索引超出矩阵范围的元素会报错，但可以赋值

% % 矩阵的删除

% % 必须删除整行或者整列的元素
% 在组合删除下，不能删除单个元素
b(:,2)=[];

% % 线性删除下，可以删除单个元素
% % 因为线性储存的方式把一个矩阵元素按列优先的顺序自动存储为一行数字
% % 也就是存储为一个行向量
b(2)=[];
