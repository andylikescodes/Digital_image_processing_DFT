I = rgb2gray(imread('Camblurred.jpg'));

%apply fourier transformation and shift
%the (0,0) coordinate to the middle
I_fft2 = fftshift(fft2(I));

%convert the complex fourier transform into the log
%scale
I_fft2_scaled = log(1+abs(I_fft2));
colormap(gray);
imagesc(I_fft2_scaled);

%the sections that contain noise is:
% (97,224) (106,224) (97,236) (106,236)
% (150,194) (157,194) (157,202) (150,202)
% (253,132) (262,132) (262,139) (253,139)
% (306,100) (314,100) (306,110) (314,110)
% (173,133) (179,133) (179,141) (173,141)
% (142,100) (149,100) (149,110) (142,110)
% (233,194) (239,194) (239,202) (233,202)
% (263,226) (269,226) (269,232) (263,232)

% Get rid of the noise sections from the fourier plot
% so we can visualize
I_fft2_scaled(224:236,97:106)=0;
I_fft2_scaled(194:202,150:157)=0;
I_fft2_scaled(132:139,253:262)=0;
I_fft2_scaled(100:110,306:314)=0;
I_fft2_scaled(133:141,173:179)=0;
I_fft2_scaled(100:110,142:149)=0;
I_fft2_scaled(194:202,233:239)=0;
I_fft2_scaled(226:232,263:269)=0;

imagesc(I_fft2_scaled);

% Get rid of the noise section from the shifted
% complex fourier transform

I_fft2(224:236,97:106)=0;
I_fft2(194:202,150:157)=0;
I_fft2(132:139,253:262)=0;
I_fft2(100:110,306:314)=0;
I_fft2(133:141,173:179)=0;
I_fft2(100:110,142:149)=0;
I_fft2(194:202,233:239)=0;
I_fft2(226:232,263:269)=0;

% Invert fourier
I_ifft2 = abs(ifft2(I_fft2));
imagesc(I_ifft2);


