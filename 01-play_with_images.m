clear all
close all
img = imread('baboon.png');
imshow(img);
[fil,col,ch] = size(img);

img_R = img(:,:,1);
img_G = img(:,:,2);
img_B = img(:,:,3);

figure;
imshow(img_R);

g_img = uint8(zeros(fil,col,ch));
g_img(:,:,1) = img_R;

figure;
imshow(g_img);

img_gray = zeros(fil,col);
% A mano con matemáticas
img_gray = (0.2989 *double(img_R)) + (0.5870 * double(img_G)) + (0.1140* double(img_B));
img_gray = uint8(img_gray);

figure;
subplot(1,2,1);
imshow(img_gray);
% Usando las bibliotecas de Mathlab
img_gray=rgb2gray(img);
subplot(1,2,2);
imshow(img_gray);





