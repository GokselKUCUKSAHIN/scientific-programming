close all;
%% Load images
im1 = imread('Image1.jpg');
im2 = imread('Image2.jpg');

%% Show images
figure; imshow(im1); title('img1');
figure; imshow(im2); title('img2');

%% Convert to gray scale
im1 = rgb2gray(im1); 
im2 = rgb2gray(im2);

%% Show gray scale
figure; imshow(im1); title('img1 gray scale');
figure; imshow(im2); title('img2 gray scale');

%% Substract Images

% im_diff = abs(im1 - im2); % manuel
im_diff = imsubtract(im1, im2); % built in
figure; imshow(im_diff); title('im diff');

%% imtool analysis
%imtool(im_diff);
%imhist(im_diff);

%% Thresholding
im_diff = im2double(im_diff);
im_bin = imbinarize(im_diff);
figure; imshow(im_diff); title('im diff binary');

%% Opening
%%se = strel('disk', 1);
%%im_open = imopen(im_bin, se);

im_open = bwareaopen(im_bin, 15);
figure; imshow(im_open); title('im diff opening');

%% Connect Component
im_stats = regionprops(im_open, 'MajoraxisLength');
im_len = [im_stats.MajorAxisLength];
idx = im_len > 80;
im_stats_final = im_stats(idx);
disp(im_stats_final);
if isempty(im_stats_final)
    disp('nothing here');
else
    disp('there is something here');
end


