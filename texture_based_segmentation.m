%%Read Image:
I = imread(‘b.png’);
figure, imshow(I);

%%Create texture Image:
E = entropyfilt(I);
Eim = mat2gray(E);
imshow(Eim);

%%Create mask for bottom texture:
BW1 = im2bw(Eim, .8);
imshow(BW1);
figure, imshow(I);
roughMask = imfill(closeBWao,’holes’);

%%Segment Top Texture:
imshow(roughMask);
figure, imshow(I);

%%Segmentation Results:
texture1 = I;
texture1(~mask2) = 0;
texture2 = I;
texture2(mask2) = 0;
imshow(texture1);
figure, imshow(texture2);