clc,clear,close all;
a=rand(3,3)
filename='ko_1.txt';
dlmwrite(filename,a,'delimiter',' ','precision',4) 
% dlmwrite(filename,a,'-append','delimiter',' ','precision',5,'roffset',2)  %�ָ���������,ƫ����
type(filename)
% ��������txt��dat��csv���÷�������ͬ

save 'ko_1.mat' a  %�ѱ���a��ֵ�����ڴ��ļ��У���������load��Ӧ