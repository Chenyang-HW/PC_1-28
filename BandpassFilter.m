clc;
clear;

[s, Fs]=audioread('1.wav');

Fc=1000;    %center frequency
Fbw=600;    %pass band
order=1;

time=(1:length(s))/Fs;
Wn=[(Fc-Fbw)/(Fs/2) (Fc+Fbw)/(Fs/2)];

%Design Butterworth band pass filter
[a,b]=butter(order,Wn,'bandpass');
sF=filter(a,b,s);                   

audiowrite('2_4W.wav', s, Fs);
sound(s,Fs);
sound(s, Fs);
