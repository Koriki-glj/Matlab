% ��΢�ַ��̵���ֵ��
clc,clear,close all;
[x,y]=ode45(@ode,[0 5],[1 1])
a=plot(x,y(:,1))

%���̣����䣬��ʼֵ
function dy=ode(x,y)
dy=zeros(2,1); %y1��y2ͬ����y,�����ǵĵ���ȫ����ʼ��Ϊ0
dy(1)=y(2);
dy(2)=1-2*y(1)+3*y(2);
end