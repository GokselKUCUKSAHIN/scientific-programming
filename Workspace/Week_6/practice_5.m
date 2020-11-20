clear;
c = 5;
t = linspace(0, 10*pi, 200);
x = sin(t./(2*c)).*cos(t);
y = sin(t./(2*c)).*sin(t);
z = cos(t./(2*c));
plot3(x,y,z, 'LineWidth', 2), grid on, title('Helix'), axis equal;