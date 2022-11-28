clc;clear all;close all;
%% LOAD IMAGE
f=imread('C:\Users\Sorname\Desktop\im.tif');
%% Butterworth Low Pass Filtering

A=BLPF(f,10,2);
B=BLPF(f,30,2);
C=BLPF(f,60,2);
D=BLPF(f,160,2);
E=BLPF(f,460,2);
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