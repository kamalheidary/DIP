clc;clear all; close all;
%%%load image%%%
im=imread('cafe.tif');
% im=rgb2gray(ima);
%%%histogeram definition%%%
a=zeros(1,256);
[m,n]=size(im);
for i=1:1:m
    for j=1:1:n
        for k=1:256
            if im(i,j)==k-1;
                a(k)=a(k)+1;
            end;
        end;
    end;
end;
hist=a/m/n;
%%%histeq function%%%
Tr=round(255*cumsum(hist));
%%%change class%%%
x=double(im);
%%%fiting%%%
% fitH=(0:255); Auxiliary function for fitting
a1=276.1 ;
b1=0.01266;
c1=-0.631;
a2=79.07; 
b2=0.04483;
c2=1.77;
a3=89.61;
b3=0.02912;
c3=1.181;
a4=15.02;
b4=0.09076;
c4=3.999;
a5=23.11;
b5=0.08609;
c5=-3.813;
a6=4.807;
b6=0.1193;
c6=-0.4491;
a7=2.426;
b7=0.1411;
c7=3.8;
a8=1.576;
b8=0.2444; 
c8=2.104;

Xim1=a1*sin(b1*x+c1)+a2*sin(b2*x+c2)+a3*sin(b3*x+c3)+a4*sin(b4*x+c4)+a5*sin(b5*x+c5)+a6*sin(b6*x+c6)+a7*sin(b7*x+c7)+a8*sin(b8*x+c8);

%%%change class%%%
Xim=uint8(Xim1);
%%%new histogeram%%%
b=zeros(1,256);
for i=1:1:m
    for j=1:1:n
        for k=0:255
            if Xim(i,j)==k-1;
                b(k)=b(k)+1;
            end;
        end;
    end;
end;
hist2=b/m/n;
%%%plote%%%
subplot(221)
imshow(im);

subplot(222)
imshow(Xim);

subplot(223)
bar(hist);

subplot(224)
bar(hist2);

