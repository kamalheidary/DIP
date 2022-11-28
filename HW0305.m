clc;clear all;close all;
%% smooth
f=imread('cameraman.tif');
f=imnoise(f,'salt & pepper',0.05);
a=1;
w=ones(2*a+1);
w=w/sum(w(:));
[M,N]=size(f);
g=uint8(zeros(M,N));
z=zeros(a,M)';
f=[z f z];
z=zeros(a,M+2);
f=[z;f;z];
[M,N]=size(f);
for i=2:M-1;
    for j=2:N-1;
        for h=1:2*a+1;
            for k=1:2*a+1;
                  g(i-1,j-1)=w(h,k)*f(i+h-2,j+k-2)+g(i-1,j-1);
            end;
        end;
    end;
end;
%% weighted smooth
f=imread('cameraman.tif');
f=imnoise(f,'salt & pepper',0.05);
b=1;
w=[1 1+b 1;1+b 2+b 1+b; 1 1+b 1];
% c=2;
% w2=[1 1 c 1 1;1 c c+1 c 1;c c+1 c+3 c+1 c;1 c c+1 c 1;1 1 c 1 1]
w=w/sum(w(:));
[M,N]=size(f);
gg=uint8(zeros(M,N));
z=zeros(b,M)';
f=[z f z];
z=zeros(b,M+2);
f=[z;f;z];
[M,N]=size(f);
for i=2:M-1;
    for j=2:N-1;
        for h=1:2*b+1;
            for k=1:2*b+1;
                  gg(i-1,j-1)=w(h,k)*f(i+h-2,j+k-2)+gg(i-1,j-1);
            end;
        end;
    end;
end;
%% median

f=imread('cameraman.tif');
f=imnoise(f,'salt & pepper',0.05);
d=1;
w=zeros(2*d+1);
% w=w/sum(w(:));
[M,N]=size(f);
ggg=uint8(zeros(M,N));
z=zeros(d,M)';
f=[z f z];
z=zeros(d,M+2);
f=[z;f;z];
[M,N]=size(f);
for i=2:M-1;
    for j=2:N-1;
        for h=1:2*d+1;
            for k=1:2*d+1;
                b=f(i-1:1+i,j-1:1+j);
                w=reshape(b,1,[]);
                w=sort(w);
                ggg(i-1,j-1)=w(1,5);
            end;
        end;
    end;
end;
%%
 
subplot(141)
imshow(f)
title('orginal image');

subplot(142)
imshow(g)
title('smooth w=3*3');

subplot(143)
imshow(gg)
title('smooth w=3*3 weighted');

subplot(144)
imshow(ggg)
title('median');