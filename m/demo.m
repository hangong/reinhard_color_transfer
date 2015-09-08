% Demostration of Reinhard's Image Colour Transfer

%   References:
% Erik Reinhard, Michael Ashikhmin, Bruce Gooch and Peter Shirley,
% 'Color Transfer between Images', IEEE CG&A special issue on Applied
% Perception, Vol 21, No 5, pp 34-41, September - October 2001

% Copyright 2015 Han Gong, University of East Anglia

I0 = im2double(imread('scotland_house.jpg'));
I1 = im2double(imread('scotland_plain.jpg'));

IR = cf_reinhard(I0,I1);

figure;
subplot(1,3,1); imshow(I0); title('Original Image'); axis off
subplot(1,3,2); imshow(I1); title('Target Palette'); axis off
subplot(1,3,3); imshow(IR); title('Result After Colour Transfer'); axis off
