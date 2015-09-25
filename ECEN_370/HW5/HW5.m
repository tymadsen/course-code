%(Compliments of Prof. Brian Mazzeo) (7 points) There are many different ways to
%simulate joint random variables. We will explore two approaches in this problem. Consider that you have the
%following joint PMF, pXY(x, y):
%pXY(0, 0) = 1/8
%pXY(0, 1) = 1/4
%pXY(1, 0) = 1/8
%pXY(1, 1) = 1/2
%One way to simulate this is to generate a decent sized vector of random variables. Since these variables are
%between 0 and 1, break up the unit interval as follows (to visualize this, draw a line and label the end points 0 and
%1): For those random numbers obtained between 0 and 1/8, you assign x = 0, y = 0 (table coordinate point (0,0),
%note you need two vectors x and y); for values between 1/8 and 2/8, you choose (1,0), for values between 2/8 and
%4/8 you choose (0,1), and for values between 4/8 and 1, you choose (1,1). Code this as a big 'if' statement. Pay
%attention to what is going on here. Note from the joint PMF that (0,0) has a probability of 1/8 and so does (1,0),
%while (1,1) has a probability of a whole half (the second half in our unit interval). The script
%“simulate_joint_PMF.m” from HW4 does this for a much more general case.
%a) Using this approach, write your own MATLAB script to simulate the joint PMF above. Use 10,000 trials. Now
%check if your probability of getting a point (x,y) matches those in the table. For example, check the times that
%both x and y equal zero and divide over your total number of trials. Turn in your script and simulation results.

clear;

trials = 10000;
X = zeros(trials);
Y = zeros(trials);
XY = zeros(2,2);

for k=1:trials
    val = rand(1);
    if(val <= 1/8)
        X(k) = 0;
        Y(k) = 0;
        XY(1,1) = XY(1,1)+1;
    elseif(val <= 1/4)
        X(k) = 1;
        Y(k) = 0;
        XY(1,2) = XY(1,2)+1;
    elseif(val <= 1/2)
        X(k) = 0;
        Y(k) = 1;
        XY(2,1) = XY(2,1)+1;
    else
        X(k) = 1;
        Y(k) = 1;
        XY(2,2) = XY(2,2)+1;
    end
end

XY = XY ./ trials;


%Another approach to this problem is to use conditioning and the fact that pXY(x, y) = pY | X(y | x)pX(x). First,
%determine the marginal PMF, pX(x). Then determine the conditional PMF, pY | X(y | x).
%To simulate you first determine an x by splitting up the uniform random variable. Then given that x, you
%determine a y by simulating the conditional PMF. Draw another unit line. What portion of it corresponds to the
%marginal PMF of x = 0? What does the conditional PMF, pY | X(y | 0), look like?
%b) Write a MATLAB script that performs this second approach. Simulate it for 10,000 trials and make sure that it
%matches part (a) and the original joint PMF. Turn in your script and simulation results.
%c) Calculate the expectation of X analytically. Then take the average of the results from your marginal PMF that
%you simulated above. Does the expectation of X match the average of the results from your marginal PMF?
%d) Calculate the variance of X analytically. Then calculate the variance of the results from your marginal PMF that
%you simulated above. Does the analytical variance of X match the simulated variance?

pX_x_0 = sum(XY(:,1));%from previous method
pX_x_1 = sum(XY(:,2));%from previous method
Y_x_0 = zeros(trials,1);
Y_x_1 = zeros(trials,1);
Y_0 = zeros(2,1);
Y_1 = zeros(2,1);
XY_2 = zeros(2,2);

for m=1:trials
    val2 = rand(1);
    %x=0
    if(val2 <= 1/3)
        Y_x_0(m) = 0;
        Y_0(1) = Y_0(1)+1;
    else
        Y_x_0(m) = 1;
        Y_0(2) = Y_0(2)+1;
    end
    %x=1
    if(val2 <= 1/5)
        Y_x_1(m) = 0;
        Y_1(1) = Y_1(1)+1;
    else
        Y_x_1(m) = 1;
        Y_1(2) = Y_1(2)+1;
    end
end

Y_0 = Y_0 ./ trials .* pX_x_0;
Y_1 = Y_1 ./ trials .* pX_x_1;

XY_2 = [Y_0 Y_1];


