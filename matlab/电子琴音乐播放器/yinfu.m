function y=yinfu(x1,x2,shizhi)
%yinfu.m
%20171105 
%作者/旺旺/up：freexyn
%单个音符发声
%x1：1-低音；2-中音；3-高音

if nargin==2
    shizhi=4;
end

%音符频率列表
flist=[262	523	1046
        294	587	1175
        330	659	1318
        349	698	1397
        392	784	1568
        440	880	1760
        494	988	1976
        0   0    0];
    
T=2/shizhi;
fs=44100;
t=0:1/fs:T;
y=sin(2*pi*flist(x2,x1)*t);
% sound(y,fs)