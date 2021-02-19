%xx = 0:.25:10
%xx(2:end-1)
xmin = -10;
xmax = 10;
n = 5;
unifrnd(xmin,xmax,1,n);
tt=linspace(0,1,100)
TS=linspace(0,1,5)
%TS = [1 3 5 7 9];
XS = [2 4 6 8 10]
xx=spline(TS,XS,tt)