clear;
x = linspace(0,2*pi,25);
y = sin(x).*cos(x);
plot(x, y, 'rd:'), grid on, xlabel('x'), ylabel('y'), title('plot of sin(x)cos(x)');