clc,clear,close all;
% % 数值格式仅影响数字显示在命令行窗口输出中的方式
% % 而不是matlab计算或保存它们的方式
% % 改变数值格式函数format
a=[1/3 1.23e-6];
% format short  %这是默认格式，是十进制的短格式，用小数点后四位来表示
%   a
%   
% format long   %%是十进制的长格式，用小数点后15位来表示
% a
% 
% format short e  %用科学计数法表达
% a
% 
% format  rational  %用有理数表达
% a
% 
% format long e   %用很长的科学计数法表达
% a
% 
% format hex  %使用16进制的数字来表达数据
% a
% 
% format shortG   %使用小数或者科学计数法中，最为紧凑的一种显示格式来显示数据
% a

% % 函数get获取当前Matlab中的格式，这个0是一个句柄值,他表达当前的Matlab会话
% % format获取当前会话中数字的显示格式
b=get(0, 'format')

set(0,'format','shortg')  %设置当前的数值格式,此运行是不会返回任何值

% % get与set是一对相对值，一个获取，一个设置




