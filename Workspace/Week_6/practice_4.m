clear;
r = 5;
theta = linspace(0,2*pi,100);
x = r*cos(theta);
y = r*sin(theta);
plot(x, y, 'k'), grid on, xlabel('x'), ylabel('y'), title('plot of circle'), axis equal, axis tight;
