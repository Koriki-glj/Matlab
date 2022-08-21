function []=keyfun(p)
%keyfun.m
%¼üÅÌ°´¼üÏìÓ¦

key=get(gcf,'currentkey');
morenyanse=[0.9412 0.9412 0.9412];
switch key
    case 'a'
        x1=2;x2=1;
        set(p,'backgroundcolor',morenyanse);
        set(p(2,1),'backgroundcolor','g');
    case 's'
        x1=2;x2=2;
        set(p,'backgroundcolor',morenyanse);
        set(p(2,2),'backgroundcolor','g');
    case 'd'
        x1=2;x2=3;
        set(p,'backgroundcolor',morenyanse);
        set(p(2,3),'backgroundcolor','g');
    case 'f'
        x1=2;x2=4;
        set(p,'backgroundcolor',morenyanse);
        set(p(2,4),'backgroundcolor','g');
    case 'g'
        x1=2;x2=5;
        set(p,'backgroundcolor',morenyanse);
        set(p(2,5),'backgroundcolor','g');
    case 'h'
        x1=2;x2=6;
        set(p,'backgroundcolor',morenyanse);
        set(p(2,6),'backgroundcolor','g');
    case 'j'
        x1=2;x2=7;
        set(p,'backgroundcolor',morenyanse);
        set(p(x1,x2),'backgroundcolor','g');
    case 'q'
        x1=3;x2=1;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'w'
        x1=3;x2=2;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'e'
        x1=3;x2=3;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'r'
        x1=3;x2=4;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 't'
        x1=3;x2=5;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'y'
        x1=3;x2=6;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'u'
        x1=3;x2=7;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'z'
        x1=1;x2=1;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'x'
        x1=1;x2=2;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'c'
        x1=1;x2=3;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'v'
        x1=1;x2=4;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'b'
        x1=1;x2=5;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'n'
        x1=1;x2=6;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
    case 'm'
        x1=1;x2=7;
        set(p,'backgroundcolor',morenyanse);
        set(p(4-x1,x2),'backgroundcolor','g');
end

if exist('x1','var')
    y=yinfu(x1,x2,8);
    sound(y,44100);
end