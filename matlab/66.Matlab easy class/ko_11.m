% ���׻�ͼ
clc,clear,close all;
data=[2.214  2.554
    2.552 2.551
    2.887 2.301
    2.654 2.888
    3.214 3.789
    4.101 2.011 
    4.111 1.888
    ];
str={'�����˾������','����ѹ��ָ��'};
y1=data(:,1);
y2=data(:,2);
plot(y2)
yyaxis right  %���Ҳ�������
plot(y1)
legend(str)
box off

h3=gca  %��õ�ǰ������ľ��
h3.YAxis(2) .Color='k';  %�ڶ������ұߵ�������Ϊ��ɫ
h3.YAxis(1).Limits=[0 5];  %�����������ķ�Χ
h3.XLim=[0 9];
h3.XTick=1:2:9;  %������ķ�Χ
h3.YGrid='on';  %��������Ӻ����������
h3.TickLength=[0 0];  %ȡ���������С����

h4=gcf;%��õ�ǰͼ���ľ��
h4.Position(3)=1.5*h4.Position(3);