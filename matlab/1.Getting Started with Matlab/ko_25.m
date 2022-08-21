clc,clear,close all;
% % 转换string
% % 缺失值missing
% % 判断缺失ismissing
% % 缺失值表示数据中不可靠或不可用的点
% % 不同类型中缺失值的表达不同，数值型用NaN,这里用<missing>.
% % missing从matlab2017a开始推出
% % 字符串数组扩展时，缺失元素用<missing>自动填充

a=string (100);
b=string('100');
c=char("100");
% % 任何数据类型都可以使用missing表达缺失值
d=string(missing);
% % 缺失值与任何数据比较结果都为假,除了一种特例就是比较两者不相等运行结果呢是真
% % 缺失值的任何运算结果都是缺失值
e=single(missing) ;  %数值型用NaN

% 扩展
f="521";
g(2,3)=f;

