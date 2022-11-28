
clc; clear all; close all;
a=imread('C:\Users\Sorname\Desktop\M.tif');
imm=a;

aa=a;
aa=double(aa);
k1=a;
S=zeros(size(a));
k2=zeros(size(a));
% w=[0 -1 0;-1 4 -1; 0 -1 0];
w=[-1 -1 -1;-1 8 -1; -1 -1 -1];

%%
[m,n]=size(aa);
G=zeros(m,n);
l1=zeros(m,1);
im1=[l1 aa l1];
im2=im1';
[M1,N1]=size(im2);
l2=zeros(M1,1);
im3=[l2 im2 l2];
a=im3';
[Mb,Nb]=size(a);
%%
a=double(a);
for i=1:Mb-2
    for j=1:Nb-2
        S(i,j)=sum(sum(w.*a(i:i+2,j:j+2)));
    end
end
k=S+aa;
k=uint8(k);
%%
subplot(121)
imshow(imm)
title('real image');

subplot(122)
imshow(k)
title('laplacian filter');