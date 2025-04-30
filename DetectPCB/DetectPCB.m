% --- detect pcb ---
x = imread('origin.jpg');
y = imread('error.jpg');
imshow(y);
[g c d] = size(x);
y = imresize(y, [g, c]);
subplot(1, 3, 1);
imshow(x);
title('pcb origin');
subplot(1, 3, 2);
imshow(y);
title('pcb error');
subplot(1, 3, 3);
imshow(x-y);
title('error position');