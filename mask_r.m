function IMG_OUT = mask_r(IMG, W) %IMG es escala de grises, W es 3x3
  [fil, col] = size(IMG);

  IMG_OUT = zeros(fil,col);
  IMG = double(IMG);
  g = 0;

  for x=2:fil-1
      for y=2:col-1
          for s=-1:1
              for t=-1:1
                  g=(W(s+2,t+2)*IMG(x+s,y+t)) + g;
              end
          end
          IMG_OUT(x,y) = g;
          g=0;
      end
  end
  IMG_OUT=uint8(IMG_OUT);
end
