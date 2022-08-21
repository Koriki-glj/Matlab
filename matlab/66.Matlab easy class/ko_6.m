clc,clear,close all;
%方程的符号解法,求的是解析解
% syms k
% eqn=1085.93*k^(1-0.3)+k+453.39==0.175*k.^0.3+62.5;
% solk=solve(eqn,k,'ReturnConditions',true)
% a=solk.k
% b=solk.parameters
% c=solk.conditions

% 数值解  fzero求解的是一元函数的数值解
fun=@(k) 1085.93*k^(1-0.3)+k+453.39-0.175*k.^0.3-62.5;
d=fzero(fun,1)
e=fplot(fun,[-5 5])
%发现此函数无解