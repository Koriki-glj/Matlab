%%һԪ�������Ż�����

% clc;clear;close all;
% y=@(x) -(3-2*x).^2 * x;  %ϵͳһ��Ĭ�ϵ���x������ĳ�t����ᵱ����һ������
% fplot(y,[0,2]),grid on;hold on;
% opts=optimset('display','iter');   %�ۿ�����������optsΪ�Ż�����
% opts.TolX=1e-3;   %��������ʽ������ֹ����
% [x,fval,ex,msg] = fminbnd(@opt1,0,1.5,opts)  %���������䣬�Ż�ѡ��
% Vmax=-fval 
% plot(x,fval,'r*')
% axis([0 2,-10 10])
% function f =opt1(x)   %�����ֲ�����,һ��ֲ�������Ҫ�ŵ�ĩβ
% f= -(3-2*x).^2 * x;
% end



% clc;clear;close all;
% fplot(@sin,[0,2*pi]);
% opts=optimset('display','iter');
% [x,fval,ex,msg] = fminbnd(@sin,0,2*pi,opts) %����ֵΪ�����Ž⣬����ֵ����ֹ��־��������Ϣ
% hold on;
% plot(x,fval,'r*')
                    %�������������������������Ҫʹ��@����fminbnd���������