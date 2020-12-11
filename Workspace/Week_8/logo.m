tet = 45;
% A = [cosd(tet) sind(tet); -sind(tet) cosd(tet)];
A = [2 -1; -3 5];
X = [csvread('logox.txt') ; csvread('logoy.txt')];
X = A*X;
figure; plot(X(1, : ), X(2, : ), 'k', 'linewidth', 3); title('original logo'), axis equal;