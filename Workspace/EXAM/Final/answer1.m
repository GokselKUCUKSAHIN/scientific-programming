%% A
x = -1.0:0.2:1.0;
y = -2:0.25:3;
length_x = length(x);
length_y = length(y);

nx = 1:length_x;
ny = 1:length_y;
space = x .* y';
%%
res = exp(space(nx.^2 - ny.^2));
%%
for nx=1:length_x
    for ny=1:length_y
        result(nx, ny) = exp(x(nx)^2-y(ny)^2);
    end
end

y = y';



%% B
x = zeros(10000);
for n = 1:10000
    x(n) = rand();
end