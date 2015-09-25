%Matlab exercise:
%Implement part (b) in Matlab (look at the solution in the book) to show how you can use
%this to generate the exponential random variable. Simulate this for 10,000 points and turn in your histogram
%plot. It should look like the histogram for an exponential random variable!
clear;
N = 10000;
lambda = 4;%arbitrary
X = zeros(1,N);
for k=1:N
    u = rand();
    X(k) = -log(1-u)/lambda;
end;
hist(X, 100);