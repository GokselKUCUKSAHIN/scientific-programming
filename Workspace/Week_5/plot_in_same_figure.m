x = [-pi:0.1:pi];
y = sin(x);
z = cos(x);
plot(x, y);
hold on;
plot(x, z, 'r')
hold off;