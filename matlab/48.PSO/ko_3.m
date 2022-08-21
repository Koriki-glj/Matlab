clc;clear;close all;  
fun4=@(x,y,z) 6*x.^2 + 5*y.^2+ 50*z.^2 +2*x*y + 12*x*z+ 22*y*z - 34*x - 16*y - 102*z + 77;
objfun4=@(x)fun4(x(1),x(2),x(3));
       % objfun4([2.06 0 0.77]);   %��һ����ֵ������һ�㲻��֪����ֵ�ķ�Χ
n=3;
lb=[0,0,0];
ub=[5 5 5];         %���ȵ����Ͻ磬������ȥ��������Ⱥ�Ĳ���
 %����
 opts=optimoptions('particleswarm');
opts.MinNeighborsFraction=0.8;   %���򣬰ٷ�֮�ټ�
 opts.InertiaRange=[0.1 0.4];  %����Ȩ�صķ�Χ
 opts.SelfAdjustmentWeight=0.8;    %����ѧϰ����
opts.SocialAdjustmentWeight=0.8;   %Ⱥ��ѧϰ����
[x,fval]=particleswarm(objfun4,n,lb,ub,opts)
plot3(x(:,1),x(:,2),x(:,3),'r*');   %������Ԫ������ʹ����������ʽ����x���������������Ƶ���������ȫ���������ӵ�λ��


%����  ��ô������Ԫ����������������ͼ��