%有限元法求一维一次常微分方程
clc,close,clear ;
format short
JM=[1 2;2 3;3 4;4 5;5 6];
JX=[0;0.2;0.4;0.6;0.8;1];
JB1=[1,0];
N=6;
e=5;
ke=[-1/2 1/2;-1/2 1/2];
delta_x=1/5;
be=delta_x*[1/2;1/2];
K=zeros(6,6);
b=zeros(6,1);
for i=1:e
    for m=1:2
        for n=1:2
        K(JM(i,m),JM(i,n))=K(JM(i,m),JM(i,n))+ke(m,n);
        end
    end
    for m=1:2
    b(JM(i,m),1)=b(JM(i,m),1)+be(m,1)   ;
    end
end    

for i=1:length(JB1(:,1))
    II=JB1(i,1);
    b=b-K(:,II)*JB1(i,2);
    K(II,:)=K(II,:)*0;
    K(:,II)=K(:,II)*0;
    K(II,II)=1;
    b(II,i)=0;
end

u=K\b;
result=[JX,u];
figure(1)
h=plot(result(:,1),result(:,2),'o');
h.MarkerEdgeColor='r';
h.MarkerFaceColor='k';
h.MarkerSize=7;
axis([0 1.5 0 1.2])

syms  y(x)
eqn=diff(y,x)==1;
cond=y(0)==0;
y=dsolve(eqn,cond);
hold on
fplot(y,'-k')
legend('数值解','解析解')
hold off

% syms  y(x)
% eqn=diff(y,x,2)==1;
% Dy=diff(y,x);
% cond=[y(0)==1,Dy(1)==2];
% y=dsolve(eqn,cond)
% fplot(y,'-k')








    
    

        
