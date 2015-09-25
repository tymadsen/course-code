% From the previous homework assignment, you should be
% able to define a triangle and then create a uniform distribution within that
% triangle.
% (a) Turn in a plot of your triangle with your vertices at (0,0), (0,1), and (1,0).
% (b) Plot an estimate of the marginal PDF of Y (essentially you can just examin
% the Ys). Show that this is the same as determined analytically.
% (c) Plot an estimate of the conditional PDF of X given Y = ½. (To do this, you
% can select points that are +/- some small distance from Y = ½).
% (d) Compute E[X] from simulation.

clear;
N=10000;
hits = 0;
X = zeros(N,2);
pY = zeros(10,1);
cX = zeros(1000,1);
y_range = linspace(.1,1,10);
x_range = linspace(.1,.5,1000);

while hits < N    
    x = rand();
    y = rand();
    
    if(x > 1-y)
        %ignore
    else
        %add
        hits = hits+1;
        X(hits,1) = x;
        X(hits,2) = y;
        yidx = ceil(y*10);
        pY(yidx) = pY(yidx)+1;
    end;
end;
count = 0;
while count < N    
    x = rand();
    y = rand();
    xidx = ceil(x*1000);
    if(y > .499 && y < .501)% y = 1/2
        count = count+1;
        cX(xidx) = cX(xidx)+1;
    end;
end;

PDF = pY./1000;% = 2x/r^2 = (2x)
subplot(3,1,1)
plot(X(:,1), X(:,2), 'xb');
subplot(3,1,2)
plot(y_range,PDF);
pdfX = cX./10;
subplot(3,1,3);
plot(x_range,sort(pdfX,'descend'));
E_X = sum(X(:,1))/N;
