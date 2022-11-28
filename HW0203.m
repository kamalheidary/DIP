clc;clear all ;close all;
A=imread('cameraman.tif');
B=imresize(A,0.5);
C=imresize(B,2);
D=imresize(A,0.25);
E=imresize(D,4);
F=imresize(A,0.125);
G=imresize(F,8);
%%%%%%%%%%%%%
subplot(2,3,1)
imshow(B);

subplot(2,3,2)
imshow(D);

subplot(2,3,3)
imshow(F);

subplot(2,3,4)
imshow(C);
title('256=>128')

subplot(2,3,5)
imshow(E);
title('256=>64')

subplot(2,3,6)
imshow(G);
title('256=>32')
