function SolnPlot(sol,model)

    xs=model.xs;
    ys=model.ys;
    xt=model.xt;
    yt=model.yt;
    xobs=model.xobs;
    yobs=model.yobs;
    robs=model.robs;
    xtri=model.xtri;
    ytri=model.ytri;
    
    XS=sol.XS;
    YS=sol.YS;
    xx=sol.xx;
    yy=sol.yy;
   
theta = linspace(0,2*pi);
k = 1;
    %for k=1:numel(xobs)
    while k < numel(xobs - 1)
        robs(k) = robs(k) - 0.07;
        fill(xobs(k)+robs(k)*cos(theta),yobs(k)+robs(k)*sin(theta),'b');
        k = k + 1;
        hold on;
    end
    fill(xtri,ytri,'b');
    plot(xx,yy,'k','LineWidth',1);
    plot(XS,YS,'ro');
    plot(xs,ys,'bs','MarkerSize',12,'MarkerFaceColor','r');
    plot(xt,yt,'kp','MarkerSize',16,'MarkerFaceColor','g');
    hold off;
    grid on;
    axis equal;

end
