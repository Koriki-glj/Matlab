clc,clear,close all;
% % ת��string
% % ȱʧֵmissing
% % �ж�ȱʧismissing
% % ȱʧֵ��ʾ�����в��ɿ��򲻿��õĵ�
% % ��ͬ������ȱʧֵ�ı�ﲻͬ����ֵ����NaN,������<missing>.
% % missing��matlab2017a��ʼ�Ƴ�
% % �ַ���������չʱ��ȱʧԪ����<missing>�Զ����

a=string (100);
b=string('100');
c=char("100");
% % �κ��������Ͷ�����ʹ��missing���ȱʧֵ
d=string(missing);
% % ȱʧֵ���κ����ݱȽϽ����Ϊ��,����һ���������ǱȽ����߲�������н��������
% % ȱʧֵ���κ�����������ȱʧֵ
e=single(missing) ;  %��ֵ����NaN

% ��չ
f="521";
g(2,3)=f;

