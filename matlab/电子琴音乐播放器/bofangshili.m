function []=bofangshili(shililist)
%bofangshili.m
%20171106
%����ʵ������

%����������ӽ���
yinfuhuizong;
%����ʵ����ӽ���
jianpushili;

value=get(shililist,'value');
list={chengdu,miwushuizhu,hunshi,aierlanhuamei,wenqing,...
    sikabuluojishi,songbie,tianlu,xuezhimeng,dida,nanshannan,chunnuanhuakai};

%����
sound(list{value},44100);
