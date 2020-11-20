clear all;
tic
for n = 1:1000000
    vec2(n) = rand;
end
toc
%clear all;
tic
vec = zeros(1,1000000);
for n = 1:1000000
    vec(n) = rand;
end
toc