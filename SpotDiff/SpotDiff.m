clc
clear all
close all
warning off;
x=imread('pic2.jpg');
imshow(x);
y=imread('pic3.jpg');
imshow(y);
g=size(x);
y=imresize(y,[g(1),g(2)]);
figure;
imshow(x);
title('First image');
figure;
imshow(y);
title('Second image');
figure;
imshow(x-y);
title('Difference of two images');