% X = -10:1:10; in range
clear;
x = -10:1:10; % -10'dan 1'er er 10'a kadar.
y = 1 ./ x;
plot(x, y, 'bo--'), grid on, xlabel('x'), ylabel('y'), title('plot of 1/x');
