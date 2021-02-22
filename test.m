 xs = 0;
 ys = 0;
 xt = 4;
 yt = 6;
 x = 2;
 y = 3;
 XS=[xs x xt]
 k = numel(XS)
 YS=[ys y yt];
 tt=linspace(0,1,100);
 TS=linspace(0,1,k); 
 xx=spline(TS,XS,tt)
 yy=spline(TS,YS,tt);
 dx=diff(xx)
 dy=diff(yy);
 L=sum(sqrt(dx.^2+dy.^2));
 display(L)