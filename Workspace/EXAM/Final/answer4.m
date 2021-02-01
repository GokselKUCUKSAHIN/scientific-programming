close all;
%% Read image
im = imread('cell.jpg');

%% Convert into Gray Scale
im = rgb2gray(im);

%% Convert into Binary image
im = imbinarize(im);

%% Rounding images
se = strel('disk', 2);
im = imopen(im, se);

%% Discard noisy little points
im = bwareaopen(im, 5);


%% imtool
%imtool(im); 

%% Region Props
im_stats = regionprops(im, 'Area');
im_area = [im_stats.Area];
im_area = im_area > 5;
totalCell = length(im_area);
disp(totalCell);
figure; imshow(im); title('Result Image. Total cell count = ' + string(totalCell));