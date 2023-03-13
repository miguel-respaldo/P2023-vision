clear all
close all

camList = webcamlist

% Connect to the webcam.
cam = webcam(1);

%preview(cam);
for idx = 1:10
    img = snapshot(cam);
    % Image processing
    img = rgb2gray(img);
    % display images
    imshow(img);
end

clear cam