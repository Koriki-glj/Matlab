clc;clear;close all;  
fun4=@(x,y,z) 6*x.^2 + 5*y.^2+ 50*z.^2 +2*x*y + 12*x*z+ 22*y*z - 34*x - 16*y - 102*z + 77;
objfun4=@(x)fun4(x(1),x(2),x(3));
     % objfun4([2.06 0 0.77]);   %��һ����ֵ
n=3;
lb=[0,0,0];
ub=[];         %���ȵ����Ͻ磬������ȥ��������Ⱥ�Ĳ���
% ����
opts=optimoptions('particleswarm','SwarmSize',1000);%������������Ⱥ����������ֵ,����Ⱥ����(SwarmSize)
%opts=optimoptions('particleswarm','InitialSwarmSpan',5);%������������Ⱥ�ķ�Χ������ֵ,����Ⱥ�ķ�Χ(InitialSwarmSpan)
% �⼸�ֵ��η����������ʹ��
% opts=optimoptions('particleswarm','InitialSwarmMatrix',rand(100,3).*10);%������������Ⱥ����������ֵ(�������),����Ⱥ���� (InitialSwarmMatrix)
[x,fval]=particleswarm(objfun4,n,lb,ub,opts)