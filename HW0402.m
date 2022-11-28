clc;clear;close all;
f=zeros(64);
f(25:43,52:55)=1;


[r,c]=size(f);
for i=1:r
    for j=1:c
        q(i,j)=(-1).^(i+j);
    end 
end
sn=f.*q;
ss=fft2(sn);

ff=zeros(64);
ff(20:42,31:33)=1;
n=imrotate(ff,-45);
[r,c]=size(n);
for i=1:r
    for j=1:c
        q(i,j)=(-1).^(i+j);
    end 
end
snn=n.*q;
sss=fft2(snn);


subplot(221)
imshow(f);

subplot(222)
imshow(abs(ss),[]);

subplot(223)
imshow(abs(n),[]);

subplot(224)
imshow(abs(sss),[]);
