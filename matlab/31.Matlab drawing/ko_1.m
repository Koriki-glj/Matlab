% a=randi(20,3,4);
% b=plot(a);
% 按列进行绘制，有4列会绘制4条折线，每条折线由三对坐标所确定，因为有3行。20以内的元素
% c=plot([11:20]);  %因为有10个数，所以横坐标是1——10；而plot输入的行向量会成为纵坐标的值，且转置输入列向量，也会成为纵坐标的值
     %[11:20]的转置是 [11:20]'
% t=hours(1:24);
% d=plot(t,randi(20,24,1));


% t=datetime([2021 1 1])+days(0:9);
% e=plot(t,randi(20,10,1));