clc,clear,close all;
% 非负线性最小二乘问题Isqnonneg
% min ||Cx-d||^2
% st.x≥0
% [x,fval]=Isqnonneg(C,d,opts)
C=[1 2 3
-1 1 5
2 0 4];
d=[3;2;8];
opts=[];
[x,fval]=lsqnonneg(C,d,opts)
syms x y z
X=[x ;y ;z];
expand(C*X-d) %将函数展开

% f(x,y,z)=6*x.^2+5*y.^2+50*z.^2+2*x*y+12*x*z+22*y*z-34*x...
% -16*y-102*z+77;

%  expand(sum((C*X-d).^2))