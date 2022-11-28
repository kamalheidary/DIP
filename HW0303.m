clc;clear all; close all;
%% loading image%%
imb=imread('H3ID4RY.tif');
imb=rgb2gray(imb);
%% histogeram%%
[m,n]=size(imb);
v=zeros(1,256);
im1=zeros(m,n);
for i=1:1:m
    for j=1:1:n
        for k=1:256
            if imb(i,j)==k-1;
                v(k)=v(k)+1;
            end;
        end;
    end;
end;
hist=v/m/n;
%% histeq function%%
Tr=round(255*cumsum(hist));
%% change class%%
k=double(imb);
%% fiting%%

AA=252.6;
b=0.002;
Xim=AA*k.^b;
%% change class%%
Xim1=uint8(Xim);

%% zeros padding%%
[M,N]=size(Xim1);
l1=zeros(M,1);
im1=[l1 Xim1 l1];
im1=im1';
[M1,N1]=size(im1);
l1=zeros(M1,1);
im1=[l1 im1 l1];
im1=im1';
%% W%%

w=ones(3,3);
w=w/sum(w(:));

%% local HE%%
[Ma,Na]=size(w);
[Mb,Nb]=size(im1);
G=zeros(Mb,Nb);


for i=1:Mb-2
    
    for j=1:Nb-2
        cdf=zeros(256,1);
        inc=1;
        for k=1:3
            for l=1:3
                %%%find midle element in the window%%%
                if(inc==1)
                    E=im1(i+k-1,j+l-1)+1;
                end
                    P=im1(i+k-1,j+l-1)+1;
                    cdf(P)=cdf(P)+1;
                   inc=inc+1;
            end
        end
                      
%%%CFD%%%
        for l=2:256
            cdf(l)=cdf(l)+cdf(l-1);
        end
            Img(i,j)=uint8(round(cdf(E)/(9)*255));
     end
end
                      
%%    
subplot(221)
imshow(imb);
%%
subplot(222)
imshow(Img);
%%
subplot(223)
imshow(Xim1);