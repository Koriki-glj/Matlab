clc,clear,close all;
glj=@sin;  %函数句柄
zh=@cos;
fplot(glj)
hold on;
fplot(zh)  %功能函数