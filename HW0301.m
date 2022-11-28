clc; clear all; close all;
%%
C=imread('cameraman.tif');
%%
C_t=double(C);
C_0=mod(C_t,2);
C0=uint8(C_0);
C_1=mod(floor(C_t/2),2);
C1=uint8(C_1);
C_2=mod(floor(C_t/4),2);
C2=uint8(C_2);
C_3=mod(floor(C_t/8),2);
C3=uint8(C_3);
C_4=mod(floor(C_t/16),2);
C4=uint8(C_4);
C_5=mod(floor(C_t/32),2);
C5=uint8(C_5);
C_6=mod(floor(C_t/64),2);
C6=uint8(C_6);
C_7=mod(floor(C_t/128),2);
C7=uint8(C_7);
%% %%%%%%%%%%%%%%%%%%%%%%%%%%
im_c=C_6+C_7; imc=uint8(im_c);
im_d=C_5+C_6+C_7;  imd=uint8(im_d);
im_e=C_4+C_5+C_6+C_7;   ime=uint8(im_e);
im_f=C_3+C_4+C_5+C_6+C_7;    imf=uint8(im_f);
im_g=C_2+C_3+C_4+C_5+C_6+C_7;   img=uint8(im_g);
im_h=C_1+C_2+C_3+C_4+C_5+C_6+C_7;   imh=uint8(im_h);
im_i=C_0+C_1+C_2+C_3+C_4+C_5+C_6+C_7;  imi=uint8(im_i);
%% %%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,4,1)
imshow(logical(C0))
title('C0')

subplot(4,4,2)
imshow(logical(C1));
title('C1')
 
subplot(4,4,3)
imshow(logical(C2));
title('C2')

subplot(4,4,4)
imshow(logical(C3));
title('C3')
 
subplot(4,4,5)
imshow(logical(C4));
title('C4')
 
subplot(4,4,6)
imshow(logical(C5));
title('C5')
 
subplot(4,4,7)
imshow(logical(C6));
title('C6')

subplot(4,4,8)
imshow(logical(C7));
title('C7')

subplot(4,4,9)
imshow(C);
title('C');
%%%%%%
subplot(4,4,10)
imshow(logical(imc));
title('C6+C7');

subplot(4,4,11)
imshow(logical(imd));
title('C5+C6+C7');

subplot(4,4,12)
imshow(logical(ime));
title('C4+C5+C6+C7');

subplot(4,4,13)
imshow(logical(imf));
title('C3+C4+C5+C6+C7');

subplot(4,4,14)
imshow(logical(img));
title('C2+C3+C4+C5+C6+C7');

subplot(4,4,15)
imshow(logical(imh));
title('C1+C2+C3+C4+C5+C6+C7');

subplot(4,4,16)
imshow(logical(imi));
title('C0+C1+C2+C3+C4+C5+C6+C7');

