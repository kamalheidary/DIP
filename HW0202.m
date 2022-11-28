
clc; clear all; close all;
%%%%%%%%%%%%256%%%%%%%%%%%%
A=imread('cameraman.tif');
%%%%%%%%%%%%2%%%%%%%%%%%%
[M,N]=size(A);
imb=zeros(M,N);
imc=zeros(M,N);
B=zeros(M,N);
x=double(A);
imb=floor(x/128)*128;
imc=mat2gray(imb);
B=im2uint8(imc);
%%%%%%%%%%%%%%8%%%%%%%%%%%%%%
imb_1=zeros(M,N);
imc_2=zeros(M,N);
C=zeros(M,N);
imb_1=floor(x/32)*32;
imc_1=mat2gray(imb_1);
C=im2uint8(imc_1);
%%%%%%%%%%%%%64%%%%%%%%%%%%%
imb_2=zeros(M,N);
imc_2=zeros(M,N);
D=zeros(M,N);
imb_2=floor(x/4)*4;
imc_2=mat2gray(imb_2);
D=im2uint8(imc_2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
imshow(A)
title('256')

subplot(2,2,2)
imshow(D)
title('64')

subplot(2,2,3)
imshow(C);
title('8')


subplot(2,2,4)
imshow(B);
title('2')



