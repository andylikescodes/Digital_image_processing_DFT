%The task is to use fourier transformation to 
%identify the dial numbers associate with the
%sound tone
%As an example when pressing the number 5 on a keypad, 
%the single low frequency tone of 770 Hertz is combined 
%with the single high frequency tone of 1336 Hertz and 
%the following signal is transmitted 
% s(t) = sin(2*pi*770*t)+sin(2*pi*1336*t)

%Checkout the Dial tone frequency image for the table

clear; clc; clf;

[ttone,FS]=audioread('touchtone.wav');
sound(ttone,FS);

%break down the the number tones

%1st number
n1 = ttone(1:1391);
[n1_f,n1_fft] = toneDFT(n1,FS);
subplot(7,1,1)
plot(n1_f,n1_fft);
title('Frequencies of the 1st number');
%frequency 679Hz, 1444Hz, it is number 3

n2 = ttone(1392:3060);
[n2_f, n2_fft] = toneDFT(n2,FS);
subplot(7,1,2)
plot(n2_f,n2_fft);
title('Frequencies of the 2nd number');
%frequency 681Hz, 1333Hz, it is number 2

n3 = ttone(3061:4706);
[n3_f, n3_fft] = toneDFT(n3,FS);
subplot(7,1,3)
plot(n3_f,n3_fft);
title('Frequencies of the 3rd number');
%frequency 831Hz, 1337Hz, it is number 8

n4 = ttone(4707:6327);
[n4_f, n4_fft] = toneDFT(n4,FS);
subplot(7,1,4)
plot(n4_f,n4_fft);
title('Frequencies of the 4th number');
%frequency 834Hz, 1333Hz, it is number 8

n5 = ttone(6328:7960);
[n5_f, n5_fft] = toneDFT(n5,FS);
subplot(7,1,5)
plot(n5_f,n5_fft);
title('Frequencies of the 5th number');
%frequency 921Hz, 1333Hz, it is number 0

n6 = ttone(7961:9641);
[n6_f, n6_fft] = toneDFT(n6,FS);
subplot(7,1,6)
plot(n6_f,n6_fft);
title('Frequencies of the 6th number');
%frequency 833Hz, 1180Hz, it is number 7

n7 = ttone(9642:11063);
[n7_f, n7_fft] = toneDFT(n7,FS);
subplot(7,1,7)
plot(n7_f,n7_fft);
title('Frequencies of the 7th number');
%frequency 754Hz, 1440Hz, it is number 6

%The number of the soundtone is 3288076

