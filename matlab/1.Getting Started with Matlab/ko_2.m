% A=linspace(1,12,5)  %序列函数的输入：起点，终点，元素个数。函数会自己计算步长
% B=linspace(1,5)   %如果不指定元素个数，默认是100个。

%%全0矩阵zeros
%5全1矩阵ones
%单位矩阵eye
% C=zeros(4)
% D=ones(3,4)
% E=eye(4),F=eye(2,3)
%%以上函数的输入最少为一个，当为一个时，即为创建方阵的含义。
%%当为两个输入时，即为行数与列数。

% % 魔方矩阵magic
% % 随机矩阵rand
% G=magic(4)
% H=rand(1,4)  %生成在1之内的随机数
% 
% % % 对角矩阵diag
% I=diag(H)
% J=diag(G)  %提取G的对角线元素，并写成列向量

% % 上三角矩阵triu  下三角矩阵tril
% K=triu (G,1)    %提取上三角元素，1代表向右偏移一个量
% L=tril(G,-1)     %提取下三角元素，-1代表向左偏移一个量
% % 也可以不带偏移量


