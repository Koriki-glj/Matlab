%%一元函数最优化问题

% clc;clear;close all;
% y=@(x) -(3-2*x).^2 * x;  %系统一般默认的是x，如果改成t，则会当作另一个变量
% fplot(y,[0,2]),grid on;hold on;
% opts=optimset('display','iter');   %观看迭代次数，opts为优化参数
% opts.TolX=1e-3;   %用误差的形式设置终止条件
% [x,fval,ex,msg] = fminbnd(@opt1,0,1.5,opts)  %函数，区间，优化选项
% Vmax=-fval 
% plot(x,fval,'r*')
% axis([0 2,-10 10])
% function f =opt1(x)   %建立局部函数,一般局部函数均要放到末尾
% f= -(3-2*x).^2 * x;
% end



% clc;clear;close all;
% fplot(@sin,[0,2*pi]);
% opts=optimset('display','iter');
% [x,fval,ex,msg] = fminbnd(@sin,0,2*pi,opts) %返回值为：最优解，最优值，终止标志，运算信息
% hold on;
% plot(x,fval,'r*')
                    %如果建立的是匿名函数，则不需要使用@，在fminbnd的输入项里。