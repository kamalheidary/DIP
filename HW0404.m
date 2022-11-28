clc;clear all;close all;
%% LOAD IMAGE
f=imread('C:\Users\Sorname\Desktop\im.tif');
%% Ideal Low Pass Filtering
%According to radius
A=ILPF(f,10);
B=ILPF(f,30);
C=ILPF(f,60);
D=ILPF(f,160);
E=ILPF(f,460);
%% Monitoring
subplot(321)
imshow(f);

subplot(322)
imshow(A);

subplot(323)
imshow(B);

subplot(324)
imshow(C);

subplot(325)
imshow(D);

subplot(326)
imshow(E);
