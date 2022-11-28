clc;clear all; close all;
%%%%%%%%%%%%%256*256%%%%%%%%%%%%%
A=imread('cameraman.tif');
%%%%%%%%%%%%%128*128%%%%%%%%%%%%%
[x,y]= size(A);
X_B=(x/2);
Y_B=(y/2);
B=uint8(zeros([X_B,Y_B]));
BX=1;BY=1;
for i=1:2:x
    for j=1:2:y
        B(BX,BY)=A(i,j);
        BY=BY+1;
    end
    BX=BX+1;
    BY=1;
end

%%%%%%%%%%%%%%%%64*64%%%%%%%%%%%%%%

X_C=(x/4);
Y_C=(y/4);
C=uint8(zeros([X_C,Y_C]));
CX=1;CY=1;
for i=1:4:x
    for j=1:4:y
        C(CX,CY)=A(i,j);
        CY=CY+1;
    end
    CX=CX+1;
    CY=1;
end
%%%%%%%%%%%%%%%%32*32%%%%%%%%%%%%%%

X_D=(x/8);
Y_D=(y/8);
D=uint8(zeros([X_D,Y_D]));
DX=1;DY=1;
for i=1:8:x
    for j=1:8:y
        D(DX,DY)=A(i,j);
        DY=DY+1;
    end
    DX=DX+1;
    DY=1;
end
%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
imshow(A)
title('256*256')
 
subplot(2,2,2)
imshow(B)
title('128*128')

subplot(2,2,3)
imshow(C);
title('64*64')


subplot(2,2,4)
imshow(D);
title('32*32')