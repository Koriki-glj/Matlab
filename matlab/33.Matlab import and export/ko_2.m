clc,clear,close all;
xingming={'xiaozhang';'xiaowang';'xiaoli'};
xuehao=['1001';'1002';'1003'];
chengji=[85 44;95 88;90 55];
hangming={'1';'2';'3'};
t=table(xingming,xuehao,chengji,'rownames',hangming)
% 混合数据以表数据类型写出

filename='ko_2.txt';
 writetable(t,filename)
% writetable(t,filename,'delimiter',' ','writerownames',true) %分隔符，写出行名称
% type(filename)

% 电子表格.xls文件不能用type命令显示数据

filename='ko_2.xls';
writetable(t,filename)
% writetable(t,filename,'sheet',2,'range','C3','writerownames',true) %单元格，范围，行名称

