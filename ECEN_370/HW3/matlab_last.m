trials = 1000000;
X_vector = random('Binomial', 4, 0.25, [1, trials]);
Y_vector = (X_vector - 1).^2;
for i =1:11     % 'for' loops in matlab can't start at 0
    count (i, 1) = i-1 ; % lower the numbers to 0-10
    count (i, 2) = sum( (i-1) == X_vector ); % how many "i-1" values are
end
pvecX = count(:, 2)/trials;
bar ( count(:, 1), pvecX);