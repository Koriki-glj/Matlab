clc,clear,close all;
% % �жϿվ���isempty
% % �жϱ���isscalar
% % �ж�����isvector
% % �վ��� ��һ�������������ά��(0x0,0x1,1��0)
% % ����  ά��Ϊl��1�ľ�����matlab����ʾΪ����ʵ������
% % ����  ά��Ϊ1��n��n��1�ľ�����matlab����ʾΪһ���л�һ����

a=[];
b=isempty(a);
i=ndims(a) ;  %�վ����ά��Ҳ��2
% % �������ú��������վ���
j=zeros(0,1) ; %�л���Ϊ�㼴��

c=1;
d=isscalar(c);


e=[1 2 3;4 5 6];
f=isvector(e);
g=[3 5 7];
h=isvector(g);