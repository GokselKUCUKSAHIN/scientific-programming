close all;

%% Load Image
im = imread('filterImg/panda.jpg');
figure; imshow(im); title('Panda Original');

%% Convert to Gray
imG = rgb2gray(im);
figure; imshow(imG); title('panda gray scale');

%% int to double
imD = im2double(im);

%% Low pass filtering
%% Average / box filter
h_box = fspecial('average',[13,13]); % box filter
h_box2 = ones(13, 13)./(13*13);
if (isequal(h_box, h_box2))
    disp('2 filters are same');
end
im_box = imfilter(imD, h_box, 'conv');
figure; imshow(im_box); title('box filter');

%% Gaussian filter
h_gaus = fspecial('gaussian', [13, 13], 0.5); % last parameter is sigma 
im_gaus = imfilter(imD, h_gaus, 'conv'); 
figure; imshow(im_gaus); title('gaussian filter. sigma = 0.5');

h_gausblur = fspecial('gaussian', [13, 13], 5); 
im_gausblur = imfilter(imD, h_gausblur, 'conv'); 
figure; imshow(im_gausblur); title('gaussian filter. sigma = 5');

%% High pass filtering
%% Laplacian filter
h_lap = [0 -1 0; -1 4 -1; 0 -1 0 ];
im_lap = imfilter(imD, h_lap, 'conv');
figure; imshow(im_lap); title('custom Laplacian filter');

%% Other Laplacian filter
h_lap2 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
im_lap2 = imfilter(imD, h_lap2, 'conv');
figure; imshow(im_lap2); title('second custom Laplacian filter');

%% fspecial Laplacian filter
h_flap = fspecial('laplacian', 0.1); % Last args is ALPHA
im_flap = imfilter(imD, h_flap, 'conv');
figure; imshow(im_flap); title('fspecial Laplacian filter');

%% Image Sharpening
im_sharp = imD + im_lap;
figure; imshow(im_sharp); title('Sharpened Image with Laplacian filter');