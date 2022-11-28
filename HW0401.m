clc;clear;close all;
f=zeros(64);
f(20:42,31:33)=1;
ss=zeros(64);

for u=1:64
    for v=1:64
        s=0;
        for x=1:64
          for y=1:64
              s=(s+f(x,y)*exp(-i*2*pi*(u*x/64+v*y/64)));
          end
        end
        ss(u,v)=s;      
    end;
end;

sn= circshift(ss,floor(size(ss)/2));

% for i=1:64
%     for j=1:64
%         sn(i,j)=(-1)^(i+j)*ss(i,j);
%     end
% end


q=log(1+abs(sn));

subplot(221)
imshow(f);

subplot(222)
imshow(abs(ss),[]);

subplot(223)
imshow(abs(sn),[]);

subplot(224)
imshow(q,[]);



