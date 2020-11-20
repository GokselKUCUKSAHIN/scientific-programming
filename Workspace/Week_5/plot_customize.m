x = [-pi:0.1:pi];
y = sin(x);
z = cos(x);

plot(x, y);
title('Sin Plot');
xlabel('x');
ylabel('sin(x)');
grid on;
legend('sin(x)');