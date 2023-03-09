close all
clear all

IMG_RGB = imread("baboon.png");
[fil, col, ch] = size(IMG_RGB);

% convertirmos la imagen para que tenga punto decimal
IMG_RGB = double(IMG_RGB)./255;

IMG_R = IMG_RGB(:,:,1);
IMG_G = IMG_RGB(:,:,2);
IMG_B = IMG_RGB(:,:,3);

IMG_HSV = zeros(fil, col, ch);

IMG_H = zeros(fil, col);
IMG_S = zeros(fil, col);
IMG_V = zeros(fil, col);

for x=1:fil
    for y=1:col
        p_value = IMG_RGB(x,y,:);
        r = p_value(1);
        g = p_value(2);
        b = p_value(3);
        cmax = max(max(r,g),b);
        cmin = min(min(r,g),b);
        diff = cmax-cmin;

        if cmax == cmin
            h = 0;
        % if cmax equal r then compute h
        elseif cmax == r
            h = (60 * ((g - b) / diff) + 360);
        % if cmax equal g then compute h    
        elseif cmax == g
            h = (60 * ((b - r) / diff) + 120);
        % if camx equal b then compute h    
        elseif cmax == b
            h = (60 * ((r - g) / diff) + 240);
        end

        % if cmax equal zero
        if cmax == 0
            s = 0;
        else
            s = (diff / cmax) * 100;
        end

        % compute v
        v = cmax * 100;

        IMG_H(x,y) = h;
        IMG_S(x,y) = s;
        IMG_V(x,y) = v;
    end
end

IMG_HSV(:,:,1) = IMG_H./360;
IMG_HSV(:,:,2) = IMG_S./100;
IMG_HSV(:,:,3) = IMG_V./100;

IMG_HSV = uint8(255.*IMG_HSV);

imshow(IMG_HSV);









