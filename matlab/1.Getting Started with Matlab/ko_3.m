% % 基本连接符[]
% % 水平连接horzcat
% % 垂直连接vertcat
% % 平铺复制repmat
% % 对角分块blkdiag
% % 任意维度连接cat
% 逗号或空格实现水平连接，分号实现垂直连接
% 水平连接矩阵，每个矩阵必须具有相同的行数
% 垂直连接时，每个矩阵必须具有相同的列数
% a=[1 2;3 4]
% b=[5 6;7 8]

%基本连接
% c=[a b];
% d=[a;b];

%水平连接horzcat
 % 垂直连接vertcat
% e= horzcat (a,b);
% f=vertcat (a,b);

% % 平铺复制repmat
% g=repmat (a,1,3);   %输入为：平铺的矩阵，平铺的行数，平铺的列数

% % 对角分块blkdiag
% f=blkdiag(a,b);    %对角重组

% % 任意维度连接cat
% g=cat (1,a,b)
% h=cat (2,a,b)  %%输入为：维度，连接的两个矩阵。一维按列连接，二维按行连接，三维按页面连接
% i=cat (3,a,b)

