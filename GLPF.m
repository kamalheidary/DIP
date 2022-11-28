function [S] = GLPF(f,D0)
D0=D0/2;
[m,n]=size(f);
f=im2double(f);
s=fftshift(fft2(f));
h=ones(m,n);
for u=1:m
    for v=1:n
        d(u,v)=sqrt(((u-round(m/2)).^2)+((v-round(n/2)).^2));
         h(u,v)=exp(-d(u,v).^2/(2*(D0.^2)));         
    end
end

g=(s).*(h);
O=ifftshift(g);
T=ifft2(O);
S=im2uint8(mat2gray(abs(T)));
f=im2uint8(f);
end

