clc,clear,close all;
%���̵ķ��Žⷨ,����ǽ�����
% syms k
% eqn=1085.93*k^(1-0.3)+k+453.39==0.175*k.^0.3+62.5;
% solk=solve(eqn,k,'ReturnConditions',true)
% a=solk.k
% b=solk.parameters
% c=solk.conditions

% ��ֵ��  fzero������һԪ��������ֵ��
fun=@(k) 1085.93*k^(1-0.3)+k+453.39-0.175*k.^0.3-62.5;
d=fzero(fun,1)
e=fplot(fun,[-5 5])
%���ִ˺����޽�