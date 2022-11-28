clc;clear all; close all;
f=imread('F.tif');
f=im2double(f);
ss=fft2(f);

%%

A=real(ss);
B=imag(ss);
C=B./A;
phi=atan(C);

%%


ang=exp(i*phi);
ang=real(ifft2(ang));

 
% 
s=sqrt((imag(ss).^2)+(real(ss).^2)); 
s=ifft2(s);
s=fftshift(s);

%%

f=im2uint8(f);
phi=im2uint8(phi);

s=log(1+abs(s));
ang=log(log(1+abs(ang)));

ang=mat2gray(ang);
ang=im2uint8(ang);

s=mat2gray(s);
s=im2uint8(s);
%% 
subplot(221)
imshow(uint8(f));

subplot(222)
imshow(phi);

subplot(223)
imshow(ang);

subplot(224)
imshow(s);