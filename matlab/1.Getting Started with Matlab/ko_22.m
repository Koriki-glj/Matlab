clc,clear,close all;
% 混合连接后的数据类型
% % 字符型不能与逻辑型连接，和其他类型连接都是字符型
% % 整型和字符型连接是字符型，和其他类型连接的是整型
% % 除了字符型和整型，单精度和其他类型连接都是单精度
% % 双精度只有和逻辑型连接是双精度，和别的类型连接最终结果都是别的类型
% % 逻辑型和逻辑型连接是逻辑型

a= [100 single(100)];
b= [100  single(100)  int8(100)]
c= [100 single(100) int8(100) 'd']
d= [100 true];

% % 整型内部连接遵循最左原则
e=[int8(100) int16(100)];
f=[int16(100) int8(100)];
g=[int8(-100) uint8(100)];
h=[uint8(100) int8(-100)];

% % 多个连接遵循最左边的整型数据
i=[true pi int32(10) single(1.23) uint8(345)]








































