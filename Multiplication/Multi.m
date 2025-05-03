clc
clear all
close all
x = imread('eight.tif');
imshow(x);
BW1 = roipoly;
BW1 = uint8(BW1);
imshow(x);
BW2 = roipoly;
BW2 = uint8(BW2);
BW = BW1 + BW2;
subplot(1, 2, 1);
imshow(x);
title('original');
subplot(1, 2, 2);
imshow(x.*BW);
title('after multiplication');