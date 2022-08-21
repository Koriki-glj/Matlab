clear,clc,close all
%20171115 
%作者/旺旺/up：freexyn
%电子琴，音乐播放器
%本程序组包括
%main.m/callbackfun.m/jianpushili.m/keyfun.m/yinfu.m/yinfuhuizong.m/bofangshili.m

%参数初始化
hangshu=3;
lieshu=7;
kuan=50;
gao=100;
strs={'1+','2+','3+','4+','5+','6+','7+'
    '1','2','3','4','5','6','7'
    '1-','2-','3-','4-','5-','6-','7-'};

%图形初始化
pingmusize=get(0,'screensize');
qidianx=pingmusize(3)/4;
qidiany=pingmusize(4)/4;
zongkuan=kuan*lieshu+100;
zonggao=gao*hangshu+150;
f=figure('menubar','none','toolbar','none','name','电子琴','position',[qidianx,qidiany,zongkuan,zonggao]);

%控件初始化
for i=1:hangshu
    for j=1:lieshu
        p(i,j)=uicontrol(f,'style','pushbutton','position',[(j-1)*kuan+50,(hangshu-i)*gao+50,kuan,gao],'string',strs{i,j},'fontsize',15,...
            'tag',[num2str(i),num2str(j)],'callback','callbackfun(p)','keypressfcn','keyfun(p)');
    end
end

%%%%%%%%%%%
%播放音乐实例
shililist=uicontrol(f,'style','popup','string','成都|迷雾水珠|婚誓|爱尔兰画眉|问情|斯卡布罗集市|送别|天路|雪之梦|滴答|南山南|春暖花开','position',[50,zonggao-100,120,70],'fontsize',15);
pshili=uicontrol(f,'style','pushbutton','string','播放','position',[190,zonggao-65,70,35],'fontsize',15,'callback','bofangshili(shililist)');
exit=uicontrol(f,'style','pushbutton','string','关闭','position',[290,zonggao-65,70,35],'fontsize',15,'callback','clear,clc,close');
