%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPAP115
% Project Title: Path Planning using PSO in MATLAB
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com

function model=CreateModel()

    % Source
    xs=0;
    ys=3;
    
    % Target (Destination)
    xt=10.23;
    yt=10.2;
    

    xtri=[7 5 6];
    ytri=[0 0 2];
    centri = [sum(xtri)/3, sum(ytri)/3]; % Finding the centroid of triangle
    X = [xtri(1),ytri(1);centri(1),centri(2)];
    rtri = pdist(X, 'euclidean');
    
    yobs=[5.5 3.0 1.5 0.6 10 centri(2)]; %Center of circles (X-coordinate)
    xobs=[7 4.0 1.2 3.5 7 centri(1)]; %Center of circles (Y-coordinate)
    robs=[3.0 1.0 1.1 0.5 1 rtri]; %Radius of circles (lengths)

    
    n=3;    %Number of handle points
    
    xmin=-10;
    xmax= 10;
    
    ymin=-10;
    ymax= 10;
    
    tarea = 0;
    parea = zeros(1,100);
    
    model.xmax=xmax;
    model.ymin=ymin;
    model.ymax=ymax;
    model.tarea = tarea;
    model.xs=xs;    %Robot source x
    model.ys=ys;    %Robot source y
    model.xt=xt;    %Robot target x
    model.yt=yt;    %Robot target y
    model.xobs=xobs;    %Obstacle x position
    model.yobs=yobs;    %Obstacle y position
    model.robs=robs;    %Obstacle radius
    model.xtri=xtri;
    model.ytri=ytri;
    model.n=n;          %Model Handle points
    model.xmin=xmin;
    model.parea = parea;
    
end
