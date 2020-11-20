x = sin(linspace(0, 10*pi, 100));

% X matrisi içerisindeki pozitif deðerin sayýsýný bul

% Döngü ile;
tic
count = 0;
for n = 1:length(x)
    if x(n) > 0
        count = count + 1;
    end
end
count;

% Matlab'ýn kendi içerisindeki built fonksiyonlar ile;
toc
tic
count2 = length(find(x > 0));
toc

% Döngülerden olabildiðince uzak durmak lazým. Mümkün olduðunca Matlab'ýn kendi
% fonksiyonlarýný kullan