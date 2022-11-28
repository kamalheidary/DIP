clc;clear all;close all;
%% LOAD IMAGE
f=imread('C:\Users\Sorname\Desktop\im.tif');
%% Ideal Low Pass Filtering
A=GLPF(f,10);
B=GLPF(f,30);
C=GLPF(f,60);
D=GLPF(f,160);
E=GLPF(f,460);
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
