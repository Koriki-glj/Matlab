clc,clear,close all;
% % ˫����double
% % ������single
% % �жϸ�����isfloat
% % ȡֵ��Χrealmax/realmin
% % ����eps
% % �����ͷ�Ϊ�����ȸ����ͺ�˫���ȸ�����
% % Matlab��Ĭ��������˫���ȸ�����
m=class(0.2);
n=isfloat(2.22);
a=double(4.25);
b=single(44.1);

c=realmax('double');
d=realmin('double');

e=realmax('single');
f=realmin('single');

% % �����������͵�ת������
% % ÿһ���������͵Ĵ�������,ͬʱҲ������ת������
g=int8(33);
h=double(g);
i=single(h);

j=sin(pi) ;  %��Ϊ�о��ȣ����Բ�����0
k=sin(sym(pi)); %�÷�������ķ�ʽȡ������

l=eps ; %�������Ĭ�ϵ�����1�����ľ���,�������1���ԣ��������Χ�ڣ����ᱻ��Ϊ����1
o=eps(100);  %����100�����ľ���


