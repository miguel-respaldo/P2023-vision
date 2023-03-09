close all
clear all

IMG_RGB = imread("baboon.png");
[fil, col, ch] = size(IMG_RGB);

% convertirmos la imagen para que tenga punto decimal
IMG_RGB = double(IMG_RGB);

IMG_R = IMG_RGB(:,:,1);
IMG_G = IMG_RGB(:,:,2);
IMG_B = IMG_RGB(:,:,3);

IMG_YCbCr = zeros(fil, col, ch);

IMG_Y = zeros(fil, col);
IMG_Cb = zeros(fil, col);
IMG_Cr = zeros(fil, col);

for x=1:fil
    for y= 1:col
        Yi = 0.2568*IMG_R(x,y) + 0.5041*IMG_G(x,y) + 0.0979*IMG_B(x,y) + 16;
        %IMG_YCbCr(x,y,1) = 0.2568*IMG_R(x,y) + 0.5041*IMG_G(x,y) + 0.0979*IMG_B(x,y) + 16;
        Cbi = -0.1482*IMG_R(x,y) - 0.2910*IMG_G(x,y) + 0.4392*IMG_B(x,y) + 128;
        Cri =  0.4392*IMG_R(x,y) - 0.3678*IMG_G(x,y) - 0.0714*IMG_B(x,y) + 128;

        IMG_Y(x,y) = Yi;
        IMG_Cb(x,y) = Cbi;
        IMG_Cr(x,y) = Cri;
    end
end

IMG_YCbCr(:,:,1) = IMG_Y;
IMG_YCbCr(:,:,2) = IMG_Cb;
IMG_YCbCr(:,:,3) = IMG_Cr;

IMG_YCbCr = uint8(IMG_YCbCr);

imshow(IMG_YCbCr);




