clc,clear,close all;
temp=[];
for i=1:30
if mod(i,2)==0
temp=[temp,i];
end
end
temp
%上述方法是让能被2整除的数以向量的形式输出