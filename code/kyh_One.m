%% ͼƬ�Ļ�������
%��ͼƬ
I=imread('lena.jpg');
%��ʾͼƬ��Ϣ
imfinfo('lena.jpg')
%��ʾͼƬ
imshow(I);
%ת��Ϊ�Ҷ�ͼ��,I1Ϊ�Ҷ�ͼ��
I1=rgb2gray(I);
imshow(I1);
%��ʾͼ��ֱ��ͼ
figure,imhist(I1);
%����ͼƬ
imwrite(I,'lenaSave.jpg');
%% �������
%��˹����
I2=imnoise(I1,'gaussian');
figure,imshow(I2);
%��������
I3=imnoise(I1,'salt & pepper');
figure,imshow(I3);
