%Define a circle with radius 1 centered at (0, 0);
%2)
%Generate a pair of uniform random variables on the interval [-1, 1], which you can use 
%to describe a uniform
%distribution over a square defined by (-1, -1), (-1, 1), (1, 1), and (-1, 1);
%3)
%Only accept points that fall in the circle, which is equivalent to making sure that all
%the darts hit within the
%target;
%4)
%Compute the distance from the center of the target to each point. This is the value of 
%your random
%variable.
%Do this simulation for 10,000 points and see if the distribution matches the PDF, the mean, 
%and the variance
%that you calculated in part (a). Turn in your code, plots, and calculations!
clear;
N=10000;
hits = 0;
r = 1;
X = zeros(N,1);
pdf = zeros(10,1);
x_range = linspace(.1,1,10);

while hits < N    
    x = rand()*2 - 1;
    y = rand()*2 - 1;
    dist = sqrt(x^2 + y^2);
    if(dist > r)
        %ignore
    else
        %add
        hits = hits+1;
        X(hits,1) = dist;
        idx = ceil(dist*10);
        pdf(idx) = pdf(idx)+1;
    end;
end;
PDF = pdf./1000;% = 2x/r^2 = (2x)
plot(x_range,PDF);
mean = sum(X)/N;% = 2r/3 = (2/3)
moment_2 = sum(X.^2/N);%E[X^2] = r^2/2 = (1/2)
var = moment_2 - mean^2;% = r^2/18 = (1/18)
