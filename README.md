# Digital_image_processing_DFT

### Practicing Fourier Transormation on digital images and sound wave.
This project has two parts:
* Use Fourier Transformation on a blurred image 'Camblurred.jpg' and get rid of the noise in the frequency domain.
  - The code is mainly contained in:
    - forierCamblurred.m

Original image:
![orignal_blurred](./Camblurred.jpg)

Processed:
![Processed_blurred](./output/Camblurred_DFT.jpg)

* Use Fourier Transformation on a phone touch tone sound 'touchtone.wav' to recognize the numbers that are pressed on the frequency domain.
  - The code mainly contained in:
    - toneDFT.m
    - fourierTouchtone.m

Touch tone and frequency:
![touchtone](./output/1stNumberFreq.jpg)
Freqency for all numbers:
![frequency](./output/Tone_frequencies.jpg)
