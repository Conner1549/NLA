prompt1='Enter the value of r:';
r=input(prompt1);
A = imread('1597499235582.jpg');
A = rgb2gray(A);
[U1,S1,V1,apxErr1] = svdsketch(double(A),1e-1,'MaxSubspaceDimension',r*r);
P1 = uint8(U1*S1*V1');
[U2,S2,V2,apxErr2] = svdsketch(double(A),1e-1,'MaxSubspaceDimension',r);
P2 = uint8(U2*S2*V2');
tiledlayout(2,2)
nexttile
imshow(A)
title(['Original (',sprintf('Rank %d)',rank(double(A)))])
nexttile
imshow(P1)
title(sprintf('Rank %d approximation',size(S1,1)))
nexttile
imshow(P2)
title(sprintf('Rank %d approximation',size(S2,1)))