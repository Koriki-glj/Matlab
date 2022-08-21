clc,clear,close all;
a=rand(3,3)
filename='ko_1.txt';
dlmwrite(filename,a,'delimiter',' ','precision',4) 
% dlmwrite(filename,a,'-append','delimiter',' ','precision',5,'roffset',2)  %分隔符，精度,偏移量
type(filename)
% 数据类型txt，dat，csv的用法基本相同

save 'ko_1.mat' a  %把变量a的值保存在此文件中，此命令与load对应