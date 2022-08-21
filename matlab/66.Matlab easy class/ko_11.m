% 文献画图
clc,clear,close all;
data=[2.214  2.554
    2.552 2.551
    2.887 2.301
    2.654 2.888
    3.214 3.789
    4.101 2.011 
    4.111 1.888
    ];
str={'城乡人均收入比','金融压力指数'};
y1=data(:,1);
y2=data(:,2);
plot(y2)
yyaxis right  %打开右侧坐标轴
plot(y1)
legend(str)
box off

h3=gca  %获得当前坐标轴的句柄
h3.YAxis(2) .Color='k';  %第二个即右边的坐标轴为黑色
h3.YAxis(1).Limits=[0 5];  %左边竖坐标轴的范围
h3.XLim=[0 9];
h3.XTick=1:2:9;  %横坐标的范围
h3.YGrid='on';  %给背景添加横向的网格线
h3.TickLength=[0 0];  %取消横坐标的小竖线

h4=gcf;%获得当前图窗的句柄
h4.Position(3)=1.5*h4.Position(3);