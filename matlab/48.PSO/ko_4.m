clc;clear;close all;  
fun4=@(x,y,z) 6*x^2 + 5*y^2+ 50*z^2 +2*x*y + 12*x*z+ 22*y*z - 34*x - 16*y - 102*z + 77;
objfun4=@(x)fun4(x(1),x(2),x(3));
        % objfun4([2.06 0 0.77]);   %��һ����ֵ
n=3;
lb=[0,0,0];
ub=[10 10 10];         %���ȵ����Ͻ磬������ȥ��������Ⱥ�Ĳ���
% ����
opts=optimoptions('particleswarm');
opts.MaxStallIterations=15;     %ʧ�ټ�¼
figure(1)
opts.PlotFcn=@pswplotbestf;   %��ͼ������ָ������Ⱥ��ȫ������ֵ������Ĺ�ϵ
opts.PlotFcn=@koriki
[x,fval]=particleswarm(objfun4,n,lb,ub,opts)

% �����ֲ�����
function stop=koriki(v,s)     %v���ٶȣ�s����״̬�����s����û���õ�
stop=false;    %��ÿ�ε�������ֹ
x=v.swarm;      %v����Ĳ���swarm�������е�����λ������
figure(2)
plot3(x(:,1),x(:,2),x(:,3),'r*');
drawnow;     %��ÿ�ε������̻��Ƴ���������һ������
pause(0.1);   %��ʱ0.��
axis([0 10, 0 10, 0 10])  %����������ķ�Χ
end


% Ϊ��ô����Ļ��1��ȴ����������Ⱥ��ȫ������ֵ�������ϵ��ͼ���أ�