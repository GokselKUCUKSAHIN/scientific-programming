%% Read Image
imOriginal = imread('panda.jpg');
im = rgb2gray(imOriginal); % convert to gray scale

%% Appy vertical and horizontal prewitt filters
hx = [1 0 -1; 1 0 -1; 1 0 -1];
hy = [1 1 1; 0 0 0; -1 -1 -1];

%% Filtered Images
Gx = imfilter(im, hx, 'conv');
Gy = imfilter(im, hy, 'conv');

%% Calculate Gradient 
Gm = abs(Gx) + abs(Gy);

%% Calculate t threshold
t = graythresh(im);  % Otsu Threshold value
GmD = im2double(Gm); % int to double

%% Apply thresh hold
EM = zeros(size(GmD));  % create new image all values are 0
idx = GmD > t;          % find indicies pixel value > threshold 
EM(idx) = 1;            % set these indicies to 1

%% Display images
figure; imshow(imOriginal); title('Original Image');
figure; imshow(Gx); title('Gx Image');
figure; imshow(Gy); title('Gy Image');
figure; imshow(Gm); title('Gm Image');
figure; imshow(EM); title('EM Image');
