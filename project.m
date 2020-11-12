source=[1 1];
destination=[10 20];
%used for precise calculation
Max_w=0.9;
Min_w=0.4;
%%%%%
n=10 ; %100 is used in paper

del_y=destination(2)-source(2);
del_x=destination(1)-source(1);
slope=del_y/del_x;

%%%%%%Divide lines into n points%%%%%%
N_p=linspace(0,1,n+1)';
xy=(1-N_p)*source+N_p*destination;%contains vertices for waypoints
plot(xy(:,1),xy(:,2),'b-o')
X=[];
Y=[];
grid on
hold on

for i =2:n
    X(i-1)=xy(i,1);
    Y(i-1)=xy(i,2);
end

z=zeros(1,n-1);

%plotting perpendicular lines from points
for i=1 : n-1
 plot([X(i),X(i)],[Y(i),0],'r-o');
 plot([X(i),0],[Y(i),Y(i)],'g-o');

end

rand_v=rand;

%%%For later purpose     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%position of particle 
%%for i =1:2
  %%%  x[i]=X_min+rand_v(X_max-X_min);
    

%waypoint
       wp=[];

%%%%%%%%%%%%%%%

%coordinates of robot at i_th waypoint
for donotgohere=[]
    %x_coord[i]=
    
%for removing the problem while pathfinding
for i =1:n
  %  beta=wp[i-1]-wp[i];%for x and y
end
beta=sqrt(beta);

%objective function
temp_delta=0;
for i =1:n
    %temp_delta=temp_delta+(x_coord[i]-destination(1))^2+(y_coord[i]-destination(2))^2
    
end
delta=temp_delta+beta;
end

