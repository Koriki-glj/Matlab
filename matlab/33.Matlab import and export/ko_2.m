clc,clear,close all;
xingming={'xiaozhang';'xiaowang';'xiaoli'};
xuehao=['1001';'1002';'1003'];
chengji=[85 44;95 88;90 55];
hangming={'1';'2';'3'};
t=table(xingming,xuehao,chengji,'rownames',hangming)
% ��������Ա���������д��

filename='ko_2.txt';
 writetable(t,filename)
% writetable(t,filename,'delimiter',' ','writerownames',true) %�ָ�����д��������
% type(filename)

% ���ӱ��.xls�ļ�������type������ʾ����

filename='ko_2.xls';
writetable(t,filename)
% writetable(t,filename,'sheet',2,'range','C3','writerownames',true) %��Ԫ�񣬷�Χ��������

