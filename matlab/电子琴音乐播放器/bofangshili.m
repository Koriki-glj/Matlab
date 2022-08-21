function []=bofangshili(shililist)
%bofangshili.m
%20171106
%播放实例音乐

%各个音符添加进来
yinfuhuizong;
%简谱实例添加进来
jianpushili;

value=get(shililist,'value');
list={chengdu,miwushuizhu,hunshi,aierlanhuamei,wenqing,...
    sikabuluojishi,songbie,tianlu,xuezhimeng,dida,nanshannan,chunnuanhuakai};

%播放
sound(list{value},44100);
