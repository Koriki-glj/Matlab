clc,clear,close all;
% % 创建strings
% % 判断isstring
% % 字符串长度strlength
% % 字符串是一个字符序列，常见的，存储一个1乘n的字符向量
% % 字符串数组是由多个字符串作为元素组成的数组
% % 从2017a开始，可以使用双引号创建字符串
% 把单独的字符串看成1x1的标量，就是一个整体
a="自由未知数";
b=isstring(a);
c=ischar(a);
d=["123","abcd";"自由未知数","!\/.!@"];
e = strings(2,3);   %创建2x3的字符串数组，初始值全为0
c='';
s="";
h=size(c);
i=size(s) ; %注意是个1x1的标量
j=isempty (c);
k=isempty(s);   %非空

f='freex  yn' ; %字符向量
g="freexyn" ; %字符串向量
l=strlength(g);  %获得字符串内容的尺度
m=length(g);

%索引
n=d(1,2);  %索引位置内容 
o=d{1,2}  ; %索引字符串内容
p=d{1,2}([1,3,4]) ; %o已经成为字符向量，此处进行二级索引

q=d+"ger"   %运算













