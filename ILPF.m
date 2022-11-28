function [T] = ILPF(f,D0)

[m,n]=size(f);
f=im2double(f);
s=fftshift(fft2(f));
h=zeros(m,n);
for u=1:m
    for v=1:n
        d(u,v)=sqrt((u-round(m/2)).^2+(v-round(n/2)).^2);
         if d(u,v)<=D0
           h(u,v)=1;
       else
           h(u,v)=0;
       end
    end
end

g=(s).*(h);
O=ifftshift(g);
T=ifft2(O);
T=im2uint8(mat2gray(abs(T)));
f=im2uint8(f);
end

