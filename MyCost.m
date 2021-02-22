%Input = sol1, model
%
%sol1 =
%model = Function containing model
%Output = z, sol
%
%z = Fitness function
%sol = sol2
function [z, sol]=MyCost(sol1,model)

x=sol1.x;
y=sol1.y;


xs=model.xs;
ys=model.ys;
xt=model.xt;
yt=model.yt;
xobs=model.xobs;
yobs=model.yobs;
robs=model.robs;


XS=[xs x xt];
YS=[ys y yt];
k=numel(XS);    %Number of elements in XS
TS=linspace(0,1,k);     %Creates k equally spaced points between 0 and 1

tt=linspace(0,1,100);   %Creates 100 equally spaced points between 0 and 1
xx=spline(TS,XS,tt);    %Interpolates from xs to xt along with the points from x using 100 points obtained from tt
yy=spline(TS,YS,tt);
%[theta, ~] = cart2pol(xx,yy)

dx=diff(xx);           %Difference in adjacent elements of xx
dy=diff(yy);           %Difference in adjacent elements of yy

L=sum(sqrt(dx.^2+dy.^2));   %This gives objective function excluding obstacles.
%If there is no obstacle and the path is a straight line, L thus
%obtained has the minimum value as the length is the shortest.

noc = numel(xobs); % Number of Obstacles
%not = numel(xtri/3);
Violation = 0;      %Initializing violation
for s=1:noc
    d=sqrt((xx-xobs(s)).^2+(yy-yobs(s)).^2);
    v=max(1-d/robs(s),0.01);
    Violation=Violation+mean(v);
end
%{
tarea = (xtri(1) * (ytri(2) - ytri(3)) + xtri(2) * (ytri(3) - ytri(1)) +  xtri(3) * (ytri(1) - ytri(2)))/2;
%{
    for a = 1:3
        aid = a;
        aid = aid + 1;
        if aid>3
            aid = 1;
        end
    parea = parea + (xtri(a) * (ytri(aid) - yy) + xtri(aid) * (yy - ytri(a)) + xx * (ytri(a) - ytri(aid)))/2;
    end

parea1 = (xx * (ytri(2) - ytri(3)) + xtri(2) * (ytri(3) - yy) + xtri(3) * (yy - ytri(2)))/2;
parea2 = (xtri(1) * (yy - ytri(3)) + xx * (ytri(3) - ytri(1)) + xtri(3) * (ytri(1) - yy))/2;
parea3 = (xtri(1) * (ytri(2) - yy) + xtri(2) * (yy - ytri(1)) + xx * (ytri(1) - ytri(2)))/2;
parea = abs(parea1)+abs(parea2)+abs(parea3);
%display(parea);
v1 = min((parea/tarea - 1.04), 0);
v1 = abs(v1);
mean(v1);
%mean(v);
Violation = Violation + mean(v1);

%}

sol.TS=TS;
sol.XS=XS;
sol.YS=YS;
sol.tt=tt;
sol.xx=xx;
sol.yy=yy;
sol.dx=dx;
sol.dy=dy;
sol.L=L;
sol.Violation=Violation;
sol.IsFeasible=(Violation==0);


%sol=ParseSolution(sol1,model);
beta = 100; %To reduce the comparative effect of violation as 1 is added to it so that we can avoid it through fitness function
%it is done because if violation is in the range of decimal values,
%adding 1 to it would create noticeable and unrequired change in the
%system. So, if that is multiplied by 100 and later 1 is added, it
%doesn't bring considerable change
z=sol.L*(1 + beta * sol.Violation); %here '1' could be omitted. But if the violation is 0, the fitness function will also become zero, so 1 is added to violation

end
