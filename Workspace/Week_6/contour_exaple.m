clear;
x = -pi:0.1:pi;
y = -pi:0.1:pi;
[X, Y] = meshgrid(x, y);
Z = sin(X).*cos(Y);
mesh(X,Y,Z);
hold on;
contour (X,Y,Z,'LineWidth', 2);
colormap('jet');