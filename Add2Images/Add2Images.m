clc
clear all
close all
%-------------------------------------%
% I = imread('rice.png');
% J = imread('cameraman.tif');
% for i = 1:256
%   for j = 1:256
%   output(i,j)=(I(i,j)+J(i,j)/2);
%   end
% end
% imshow(output);
%-------------------------------------%
% ctrl + r --> chu thich nhieu dong
% ctrl + t --> bo chu thich nhieu dong
%-------------------------------------%
I = imread('pic1.jpg');
figure;
imshow(I);
title('First Image');
g=size(I);
J = imread('pic2.jpg');
J=imresize(J,[g(1),g(2)]);
figure;
imshow(J);
title('Second Image');
for i = 1:g(1)
    for j = 1:g(2)
        for k=1:3
        output(i,j,k)=(I(i,j,k)+J(i,j,k));
        end
    end
end
figure;
imshow(output);
title('Added Image');