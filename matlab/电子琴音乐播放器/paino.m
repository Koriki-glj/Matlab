clear,clc
%paino
%2017 freexyn

keywalk=([...
   's=get(gcf,''currentkey'');,',...
   'switch s,',...
    'case ''j'' ,',...
        'u1=2;u2=1;,',...
    'case ''k'' ,',...
        'u1=2;u2=2;,',...
    'case ''l'','... 
        'u1=2;u2=3;',...
    'case ''semicolon'',',... 
        'u1=2;u2=4;,',...
   'case ''f'',',... 
        'u1=2;u2=5;,',...
    'case ''d'',',... 
        'u1=2;u2=6;,',...
    'case ''s'',',... 
        'u1=2;u2=7;,',...
    'case ''i'',',... 
        'u1=3;u2=5;,',...
    'case ''o'',',... 
        'u1=3;u2=6;,',...
    'case ''n'',',... 
        'u1=1;u2=5;,',...
    'case ''m'',',... 
        'u1=1;u2=6;,',...
    'case {''space'',''e''},',... 
        'uu=4;,',...
    'case ''a'',',... 
        'uu=8;,',...
    'case ''g'',',...
        'uu=1;,',...
'end,',...
'if(exist(''u2'',''var'')&&(exist(''uu'',''var''))),',...
'wavplay(yinfu(u1,u2,uu),44100);,',...
'clear u2;,',...
'clear uu;,',...
'end,',...
    ]);
f=figure('toolbar','none','menubar','none','position',[50 80 200 100],'keypressfcn',keywalk);


