clc;clear all; close all;
imb=imread('C:\Users\Sorname\Desktop\L.tif');
imb=double(imb);
[m,n]=size(imb);
%%
meanI=sum(imb(:))/(m*n);
stdI=(imb-meanI).^2;
stdI=sum(stdI(:))/(m*n);
stdI=sqrt(stdI);
%% conffi
k0=0.4;
k2=k0;
k1=0.02;
E=4;
mn=m*n;
L=255;
G=zeros(m,n);
%% w
a=1;
w=ones(2*a+1,2*a+1);
%% zero padding%%
[Ma,Na]=size(w);
[Mb,Nb]=size(imb);
G=zeros(Mb,Nb);
l1=zeros(m,1);
im1=[l1 imb l1];
im2=im1';
[M1,N1]=size(im2);
l2=zeros(M1,1);
im3=[l2 im2 l2];
I=im3';
[Mb,Nb]=size(I);
for i=2:Mb-2
    for  j=2:Nb-2
         b=I(i-1:1+i,j-1:1+j);
         meanb=sum(b(:))/(9);
         stdb=(b-meanb).^2;
         stdb=sum(stdb(:))/(9);
         stdb=sqrt(stdb);
         if  meanb <= k0*meanI && k1*stdI <= stdb && k2*stdI >=stdb 
            G(i,j)=E*I(i+1,j+1);
         else
             G(i,j)=I(i+1,j+1);
         end
    end
end
g=uint8(G);
%% plot
subplot(121)
imshow(mat2gray(imb))
title('orginal image');

subplot(122)
imshow(g)
title('statistic histogeram enhance');
