% HW 4 EE 370
% By Efren Cruz Cortes

trials = 10000000;

X_vector = random('Binomial', 20, 0.2, [1, trials]);
for i =1:11     % 'for' loops in matlab can't start at 0
    count (i, 1) = i-1 ; % lower the numbers to 0-10
    count (i, 2) = sum( (i-1) == X_vector ); % how many "i-1" values are
end
pvecX = count(:, 2)/trials;
%bar ( count(:, 1), pvecX); 

Y_vector = random('geo', .1, [1, trials]);
for i =1:11     % 'for' loops in matlab can't start at 0
    count (i, 1) = i-1 ; % lower the numbers to 0-10
    count (i, 2) = sum( (i-1) == Y_vector ); % how many "i-1" values are
end
pvecY = count(:, 2)/trials;
bar ( count(:, 1), pvecY); 

Z_vector = random('poiss', 3, [1, trials]);
for i =1:11     % 'for' loops in matlab can't start at 0
    count (i, 1) = i-1 ; % lower the numbers to 0-10
    count (i, 2) = sum( (i-1) == Z_vector ); % how many "i-1" values are
end
pvecZ = count(:, 2)/trials;
%bar ( count(:, 1), pvecZ); 



