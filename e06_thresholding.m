close all
clear all

IMG_RGB = imread("monedas.jpg");
figure;
imshow(IMG_RGB);

IMG_gray = rgb2gray(IMG_RGB);

% level = graythresh(IMG_gray),
level = 0.5;

BW = imbinarize(IMG_gray, level);
imshowpair(IMG_gray, BW, "montage")