clc,clear,close all;
% 结构数组的自带名称
handles.peaks=peaks(35);

handles.membrane=membrane;

[x,y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2)+eps;
sinc=sin(r)./r;
handles.sinc=sinc;

handles.current_data=handles.peaks;
surf(handles.current_data)