clc,clear,close all;
% % Ԫ������reshape
% % ��תrot90
% % ���ҷ�תfliplr
% % ���·�תflipud
% % ��תflip
% % ѭ����λcircshift
% % ����sort
% % ��������sortrows
% % �ж��Ƿ�����issorted

a=[1 2 3 4 ;5 6 7 8];
b=reshape(a,4,2);  %���Ź��򣺰��������еķ�ʽ����
c=rot90(a);
d=fliplr(a);
e=flipud(a);
h=circshift(a,[1,2]);%�ڶ���������������������������ֱ�ʾҪ��λ����
i=sort(a) ; %Ĭ�ϰ��н�������
l=sort(a,'descend') ;%���н��н���
k=issorted(a) ; %Ĭ�ϣ��жϰ����Ƿ���������
m=issorted(l,'descend');   %�жϰ����Ƿ�������
o=magic(3);
j=sortrows(o,1); %��ÿһ����Ϊ���壬������������,1�����ÿ�еĵ�һ��Ԫ�ص���������
p=sortrows(o,3);

% % flip������Ϊ��Ҫ�����ľ���ָ����ά��.
% % ά��1�������·�ת��ά��2�������ҷ�ת
f=flip(a,1);
g=flip(a,2);


