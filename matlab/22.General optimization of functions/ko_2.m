% ��������Լ�������Ժ�������ֵ  

% clc;clear;close all;
% fun1=@(x,y) (x-1).^2+y.^2+5;  %ʹ��������������ʽ����
% objfun1=@(x)fun1(x(1),x(2));    %��x������x��1��,��y����x(2)
% x0=[-1,1]; %�����ֵ
% opts=[];
% [x,fval,ex,msg]=fminsearch(objfun1,x0,opts)
% % [x,fval,ex,msg]=fminunc(objfun1,x0)   %ex=1˵���������ã��𰸿���
%%�κ�һ���Ż����������������һ�������Ż�ѡ��

%%fminsearchֱ�ӷ�Ѱ�ţ�fminunc�õ����͵��㷨Ѱ�ţ������㷨��ͬ




clc;clear;close all;
 x0=[1,1,1];
 opts=optimoptions('fminunc','SpecifyObjectiveGradient',true);
 [x,fval,ex,msg]=fminunc(@objfun2,x0,opts)
 function  [fun2,gfun2]=objfun2(x) %������ֶ�Ԫ�����ľֲ�д��
 fun2=exp((x(1)+x(2)).^2)+(x(1)-1).^2+2*sin(x(3));
 g1=exp((x(1)+x(2)).^2)*2.*(x(1)+x(2))+2*(x(1)-1);
 g2=exp((x(1)+x(2)).^2)*2.*(x(1)+x(2));
 g3=2*cos(x(3));
 gfun2=[g1;g2;g3];
 end
 
 %%�ֲ���������������ֵ���������ݶȡ�g1,g2,g3�ֱ���x,y,z���ݶȣ��ݶȾ�����ƫ����
 
 
 