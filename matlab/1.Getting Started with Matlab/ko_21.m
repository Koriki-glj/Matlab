clc,clear,close all;
% % �ж���ĸisletter
% % �жϿո�isspace
% % �ж��ض��ַ�isstrprop
% % ���ַ�blanks
% % �ַ�����strjust
% % ɾ���ո�deblank
% % ɾ���ո�strtrim

a='abc 123';
b=isletter(a);
c=isspace(a);
d=find(c)  ;  %�ҵ��пո��ַ�����������
a(d)=[];
% % ��Ҳ��ɾ���м���ַ��ķ�ʽ
e=' 12ab_AB, ';
f=isstrprop (e,'alpha');  %�ж���ĸ
g=isstrprop (e,'lower') ;  %�ж�Сд��ĸ
h=isstrprop(e,'upper')  ;   %�жϴ�д��ĸ
i=isstrprop (e,'digit') ;   %�ж�����
j=isstrprop (e,'alphanum');    %�ж���ĸ������
k=isstrprop (e,'punct')   ;  %�жϱ�����
l=isstrprop (e,'wspace') ;    %�жϿ��ַ�

m=blanks(6);
m([3 4 5])='cnm';

 n=strjust(m,'left');   %��m�еķǿ��ַ����������

o='    koriki   '  ; 
p=deblank(o) ;      %ֻ��ɾ��β��Ŀ��ַ�
q=strtrim(o)   ;     %ɾ�����п��ַ�
% % �ǿ��ַ���Ŀ��ַ����ᱻ�������ַ�ɾ�����ƶ�����















