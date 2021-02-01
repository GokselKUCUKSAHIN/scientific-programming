close all;
%% Vector data
x = [0 2 3 5 6 8 9 11 1 14 15];
fx = [0 10 10 10 10 10 10.5 15 50 60 85];

%% plot dots
figure; hold on;
plot(x,fx, 'o', 'MarkerFaceColor','b');

%% Interp 
xq = 0:0.1:x(end); % 0 to end value 0.1 steps
vq1 = interp1(x,fx,xq, 'nearest');
plot(xq, vq1, 'r-');
vq2 = interp1(x,fx,xq, 'cubic');
plot(xq, vq2, 'r-');
vq3 = interp1(x,fx,xq, 'spline');
plot(xq, vq3, 'r-'); hold off; grid on; title('soru 2'); xlabel('x'); ylabel('y');

% En güzel CUBIC ÇALIŞIYOR.


