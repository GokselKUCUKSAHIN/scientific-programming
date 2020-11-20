clear;
x = -10:1:10;
y = (2.*x.^2) - (3.*x) + 1;
plot(x, y, 'gx-'), grid on, xlabel('x'), ylabel('y'), title('plot of 2x^2 + 3x + 1');