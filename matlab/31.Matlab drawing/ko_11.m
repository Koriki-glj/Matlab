clc,clear,close all;
% y=@(x)x.^2; %�Զ��庯��
% a=fplot(y,[-10 20]); %ָ����Χ����ָ������-5��5.

%  b=fplot(@sin);  %Ԥ���庯��

% ��������ͼ�Σ��������������
% x=@(t)sin(t);
% y=@(t)cos(t);
% c=fplot(x,y,[-2*pi 2*pi]);

% ���ź����İ취����
% syms x
% f=x.^2;
% d=fplot(f,'--r*');
% d.Color='g';

%����������������
e=@(x,y) x.^2+y.^2-10;
figure(3)
f=fimplicit(e,[-2 2 -3 3]) ; %��������ͼ,ָ����Χ
% ����x.^2+y.^2-10=0��ͼ��
z=@(x,y) x.^2+y.^2-10;
figure(4)
j=fsurf(z)
% ���� x.^2+y.^2-10=z����άͼ��





% �ֶκ���
% y1=@(x)x.^2-1;
% y2=@(x)log(x);
% g=fplot(y1,[-1,1])
% hold on
% h=fplot(y2,[1,3])
% grid on




