% Given a 1xn vector v, create a vector w of the same size
%

v = randi([1, 100], 1, 100);
[m, n] = size(v);
w = zeros(m, n);
u = zeros(m, n);

% Implementation using loops
for ind = 1:n
    if ind == 1
        w(ind) = v(ind);
    else
        w(ind) = v(ind) + v(ind - 1);     
    end
end

% Implementation using vectors
u = v + [0 v(1:end-1)];

if isequal (w, u)
    disp('w and u are equal!');
end



