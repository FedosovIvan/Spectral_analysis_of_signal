%% Loading data
clear all;clc;
load('Signal.mat');

%% Input signal data
Signal=mod1;
FftL=length(Signal);       % length of fft

%% Operation FFT
FftS=fft(Signal,FftL);     % getting spectr signal by FFT
FftS=FftS.*conj(FftS)/FftL;% FftS - spectral density of signal
FftS=FftS(1:(FftL/2));
%% Plot signal and spectr
figure (1)
subplot(2,1,1);           
plot(Signal);      
grid on;
title('Signal');          

subplot(2,1,2);             
plot(FftS);                  
grid on;
title('Spectr');             
xlabel('Freequency'); 
ylabel('Spectral density');

%% Nor,alization of spectrum by max value
FftS=FftS./max(FftS);      
%% Plot signal and normalization spectr
figure (2)
subplot(2,1,1);           
plot(Signal);      
grid on;
title('Signal');          

subplot(2,1,2);              
plot(FftS);                
grid on;
title('Normed spectr');                
xlabel('Freequency'); 
ylabel('Spectral density');

