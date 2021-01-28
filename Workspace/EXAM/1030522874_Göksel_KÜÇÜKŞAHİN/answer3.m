%step = 0:0.5:100;

Res = [10, 15, 25, 40, 56, 100];
Cur = [11.15, 8.05, 6.05, 2.8, 1.95, 1.5];
Vol = Res.*Cur;
step = linspace (0,100, length(Vol));
figure;
subplot(2,3,1);
plot(step, Vol, 'b^-','MarkerFaceColor','g');
title('Original');
xlabel('Resistance Ohms'); ylabel('Amp A');

%First Degree
subplot(2,3,2);
xq = 0:0.5:100;
p1 = polyfit(Res, Vol, 1);
y1 = polyval(p1, xq);
plot(xq, y1, 'b--'); hold on;
plot(step, Vol, '^g'); hold off;
title('First Degree');
xlabel('Resistance Ohms'); ylabel('Amp A');

%Second Degree
subplot(2,3,3);
p2 = polyfit(Res, Vol, 2);
y2 = polyval(p2, xq);
plot(xq, y2, 'b--'); hold on;
plot(step, Vol, '^g'); hold off;
xlabel('Resistance Ohms'); ylabel('Amp A');
title('Second Degree');

%Third Degree (best i guess because fits better)
subplot(2,3,4);
p3 = polyfit(Res, Vol, 3);
y3 = polyval(p3, xq);
plot(xq, y3, 'b--'); hold on;
plot(step, Vol, '^g'); hold off;
xlabel('Resistance Ohms'); ylabel('Amp A');
title('Third Degree');

%Fifth Degree
subplot(2,3,5);
p5 = polyfit(Res, Vol, 5);
y5 = polyval(p5, xq);
plot(xq, y5, 'b--'); hold on;
plot(step, Vol, '^g'); hold off;
xlabel('Resistance Ohms'); ylabel('Amp A');
title('Fifth Degree');

