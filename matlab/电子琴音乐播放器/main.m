clear,clc,close all
%20171115 
%����/����/up��freexyn
%�����٣����ֲ�����
%�����������
%main.m/callbackfun.m/jianpushili.m/keyfun.m/yinfu.m/yinfuhuizong.m/bofangshili.m

%������ʼ��
hangshu=3;
lieshu=7;
kuan=50;
gao=100;
strs={'1+','2+','3+','4+','5+','6+','7+'
    '1','2','3','4','5','6','7'
    '1-','2-','3-','4-','5-','6-','7-'};

%ͼ�γ�ʼ��
pingmusize=get(0,'screensize');
qidianx=pingmusize(3)/4;
qidiany=pingmusize(4)/4;
zongkuan=kuan*lieshu+100;
zonggao=gao*hangshu+150;
f=figure('menubar','none','toolbar','none','name','������','position',[qidianx,qidiany,zongkuan,zonggao]);

%�ؼ���ʼ��
for i=1:hangshu
    for j=1:lieshu
        p(i,j)=uicontrol(f,'style','pushbutton','position',[(j-1)*kuan+50,(hangshu-i)*gao+50,kuan,gao],'string',strs{i,j},'fontsize',15,...
            'tag',[num2str(i),num2str(j)],'callback','callbackfun(p)','keypressfcn','keyfun(p)');
    end
end

%%%%%%%%%%%
%��������ʵ��
shililist=uicontrol(f,'style','popup','string','�ɶ�|����ˮ��|����|��������ü|����|˹�����޼���|�ͱ�|��·|ѩ֮��|�δ�|��ɽ��|��ů����','position',[50,zonggao-100,120,70],'fontsize',15);
pshili=uicontrol(f,'style','pushbutton','string','����','position',[190,zonggao-65,70,35],'fontsize',15,'callback','bofangshili(shililist)');
exit=uicontrol(f,'style','pushbutton','string','�ر�','position',[290,zonggao-65,70,35],'fontsize',15,'callback','clear,clc,close');
