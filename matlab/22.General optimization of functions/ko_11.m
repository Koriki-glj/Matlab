clc,clear,close all;
% ������С��������
% min (1/2)||Cx-d||^2
% ����һ��Ŀ�꺯����Ҫʹ(1/2)||Cx-d||^2=fun��||Cx-d||�Ƿ�������˼
% [x,fva]=lsqlin(C,d,A,b,Aeq,beq,lb,ub,x0,opts)
% C=[1 0;0 1];
% d=[0 0];
% A=[-1,0;1,-1;2,-1];
% b=[-1;-1;2];
% Aeq=[];
% beq=[];
% lb=[];
% ub=[];
% x0=[0 0];
% opts=[];
% [x,fval]=lsqlin(C,d,A,b,Aeq,beq,lb,ub,x0,opts)

C=[1 2 3
-1 1 5
2 0 4];
d=[3;2;8];
[x,fval]=lsqlin(C,d)


















