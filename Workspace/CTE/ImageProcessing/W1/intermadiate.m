close all;
im = imread('basicsImg/faculty.jpg');
figure; imshow(im);
imtool(im);

imlr = fliplr(im);
imud = flipud(im);

figure; imshow(imlr); title('Mirror left-right');
figure; imshow(imud); title('Mirror upside-down');

imgray = rgb2gray(im); 
figure; imshow(imgray); title('Gray SCALE');
imgray2 = im2gray(im);

disp(isequal(imgray, imgray2));