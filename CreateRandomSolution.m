function sol1=CreateRandomSolution(model)

    n=model.n;
    %n = 3;
    
    xmin=model.xmin;
    %xmin = -10;
    xmax=model.xmax;
    %xmax = 10;
    
    ymin=model.ymin;
    %ymin = -10;
    ymax=model.ymax;
    %ymax = 10;
    
    %x is a row array with model.n number of elements in row
    %The 3 elements are given name as handle name in pso.mlx
    sol1.x=unifrnd(xmin,xmax,1,n);     %Assigns uniform random numbers containing 1*n matrix between max and min to 'x'
    sol1.y=unifrnd(ymin,ymax,1,n);
    
end