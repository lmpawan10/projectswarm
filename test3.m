
xobs=[1.5 4.0 1.2]; %Center of circles (X-coordinate)
yobs=[4.5 3.0 1.5]; %Center of circles (Y-coordinate)
robs=[1.5 1.0 0.8]; %Radius of circles (lengths)
theta=linspace(0,2*pi,100);
for k=1:numel(xobs)
        fill(xobs(k)+robs(k)*cos(theta),yobs(k)+robs(k)*sin(theta),'r')
        hold on;
end