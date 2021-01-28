clc;
clear;
x = 0:pi/100:20*pi;
y = x.*sin(x);
z = x.*cos(x);

figure;
plot3(x, y, z, 'k', 'LineWidth', 2);
title('Soru 4');
xlabel('X ekseni'); ylabel('Y ekseni');
grid on; axis equal;