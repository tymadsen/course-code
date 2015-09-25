load('burgerfry.mat')
trials = 10000; % Specifies the number of trials: try this for different
                % values to see how the estimates change. 
%outcomes = simulate_joint_PMF(XY,trials); % Produces outcomes from the joint PMF.


%
% Suppose that you want to estimate what the original joint PMF looked
% like. You can do this by counting up all of the outcomes (each X,Y
% combintation) and then dividing by the total number of trials that were
% performed. The following code does just that.
%
XY_tally = zeros(6,4); % This initializes an array for your outcomes.
for c = 1:trials
    % This counts up for each (X,Y) location how many times it appeared in
    % the data.
    XY_tally(outcomes(c,1), outcomes(c,2)) = XY_tally(outcomes(c,1), outcomes(c,2)) + 1;
end
%
% The following code estimates the probability at each X,Y location by
% dividing by the total number of trials.
XY_estimated_probability = XY_tally ./ trials;

%
% This code then plots the estimated probability mass from the outcomes
% that you obtained from your numerical simulation of the joint PMF.
%
figure(1); % Loads a new figure
bar3(XY_estimated_probability);  % Plots a 3-dimensional bar graph
xlabel('Y values'); % Places labels on the x-axis of bar graph
ylabel('X values'); % Places labels on the y-axis of bar graph
zlabel('Probability Mass'); % Places labels on the z-axis of bar graph
view(-100, 50); % Sets the vantage point for viewing the bar graph
title('Estimated Probability Mass');

figure(2); % Loads a new figure.
marg_y = sum(XY_estimated_probability); % This sums over each column of the matrix XY.
marg_x = sum(XY_estimated_probability'); % This sums over each column of the transposed matrix XY.
% Note that the ' transposes a matrix.

subplot(2,1,1); % This produces a subplot in the figure in top position.
bar(marg_x);    % Produces bar graph of marginal PMF for X.
title('Marginal PMF for X');
xlabel('X Values');
ylabel('Probability Mass');

subplot(2,1,2); % This produces a subplot in the figure in bottom position.
bar(marg_y);    % Produces bar graph of marginal PMF for Y.
title('Marginal PMF for Y');
xlabel('Y Values');
ylabel('Probability Mass');

xSum=0;
for i=1:6
    xSum = xSum +i*marg_x(i);
end

ySum=0;
for i=1:4
    ySum = ySum +i*marg_y(i);
end

figure(3);
pmfX_y_2 = XY_estimated_probability(:, 2);
bar(pmfX_y_2);
sum(pmfX_y_2)
title('PMF for X given Y=2');
xlabel('X values');
ylabel('Probability Mass');

