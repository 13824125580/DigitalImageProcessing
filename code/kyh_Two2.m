%% ͼ��任(2)
%��ȡͼƬ��ת��Ϊ�Ҷ�ͼƬ
I=imread('lena.jpg');
imshow(I);
I1=rgb2gray(I);
imshow(I1);
%% ��ɢ������任
Idouble=im2double(I1);
h1=size(I1,1);
h2=size(I1,2);
H1=hadamard(h1);%������任����
H2=hadamard(h2);
I2=H1*Idouble*H2/sqrt(h1*h2);
figure,imshow(I2);
%% ��ɢ���ұ任
I3=dct2(I1);
figure,imshow(log(abs(I3)),[]);
%% ��ɢ���ҷ��任
I4=idct2(I3);
figure,imshow(I4,[0 255]);