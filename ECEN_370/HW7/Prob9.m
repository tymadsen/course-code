% Matlab exercise: Plot the triangle as in the previous problem.
% (a) Turn in your plot of the triangle.
% (b) Find E[X] from simulation.
% (c) Find E[Y] from simulation.

clear;
N=10000;
hits = 0;
X = zeros(N,2);

while hits < N    
    x = rand();
    y = rand()*2;
    
    if(x > 1-y/2)
        %ignore
    else
        %add
        hits = hits+1;
        X(hits,1) = x;
        X(hits,2) = y;
    end;
end;

plot(X(:,1), X(:,2), 'xb');
E_X = sum(X(:,1))/N;
E_Y = sum(X(:,2))/N;
