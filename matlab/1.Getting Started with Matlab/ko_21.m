clc,clear,close all;
% % 判断字母isletter
% % 判断空格isspace
% % 判断特定字符isstrprop
% % 空字符blanks
% % 字符调整strjust
% % 删除空格deblank
% % 删除空格strtrim

a='abc 123';
b=isletter(a);
c=isspace(a);
d=find(c)  ;  %找到有空格字符的线性索引
a(d)=[];
% % 这也是删除中间空字符的方式
e=' 12ab_AB, ';
f=isstrprop (e,'alpha');  %判断字母
g=isstrprop (e,'lower') ;  %判断小写字母
h=isstrprop(e,'upper')  ;   %判断大写字母
i=isstrprop (e,'digit') ;   %判断数字
j=isstrprop (e,'alphanum');    %判断字母和数字
k=isstrprop (e,'punct')   ;  %判断标点符号
l=isstrprop (e,'wspace') ;    %判断空字符

m=blanks(6);
m([3 4 5])='cnm';

 n=strjust(m,'left');   %把m中的非空字符调整到左边

o='    koriki   '  ; 
p=deblank(o) ;      %只会删除尾随的空字符
q=strtrim(o)   ;     %删除所有空字符
% % 非空字符间的空字符不会被当作空字符删除或移动！！















