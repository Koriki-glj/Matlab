function []=callbackfun(p)
%callbackfun.m

tag=get(gco,'tag');
x1=str2num(tag(1));
x2=str2num(tag(2));
morenyanse=[0.9412 0.9412 0.9412];
set(p,'backgroundcolor',morenyanse);
set(p(x1,x2),'backgroundcolor','g');
y=yinfu(4-x1,x2);
sound(y,44100);