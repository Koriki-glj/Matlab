clc,clear,close all;
% ����һ�����ݣ���α仯����С�ĸ�С����ĸ���
x=1:5;
b=var(x)
y=x.^3;
%��y��һ�������ֵ��ȥ��Сֵ�ǿ��
t=y./sum(y)*(max(y)-min(y))
c=var(t)