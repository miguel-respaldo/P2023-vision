close all
clear all

IMG_RGB = imread("persona.jpg");
[fil, col, ch] = size(IMG_RGB);

figure;
imshow(IMG_RGB);

Gx =(1/3)*[ -1  -1  -1;
       0   0   0;
       1   1   1];

Gy =(1/3)*[ -1  0  1;
      -1  0  1;
      -1  0  1;];

IMG_gray = rgb2gray(IMG_RGB);

IMG_Gx = mask_r(IMG_gray,Gx);
IMG_Gy = mask_r(IMG_gray,Gy);
IMG_PROC = abs(IMG_Gx) + abs(IMG_Gy);
IMG_PROC = uint8(IMG_PROC);

figure;
subplot(2,2,1)
imshow(IMG_gray);
subplot(2,2,2)
imshow(IMG_Gx);
subplot(2,2,3)
imshow(IMG_Gy);
subplot(2,2,4)
imshow(IMG_PROC);


