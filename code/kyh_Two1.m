%% ͼ��任(1)
%��ȡͼƬ��ת��Ϊ�Ҷ�ͼƬ
I=imread('fft.jpg');
imshow(I);
I1=rgb2gray(I);
imshow(I1);
%% ����Ҷ�任
F=fft2(I1);
S=abs(F);
figure,imshow(S,[]);
%% �Ƶ�����
Fc=fftshift(F);
figure,imshow(abs(Fc),[]);
%% ��log��ǿ
S2=log(1+abs(Fc));
figure,imshow(S2,[]);
%% Ƶ��ͼ
figure,imshow(uint8(abs(Fc/256)));
%% ����Ҷ��任
f=real(ifft2(F)/255);
figure,imshow(f);