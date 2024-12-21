clc;
clear all;
close all;

%%parameters
wp = [0.2 0.4]*pi; %% pass band f
ws = [0.3 0.5]*pi; %% stop band f
T = 1; %% sampling interval
Fs = 1/T; %% sampling frequency
Op = (2/T)*tan(wp/2);
Os = (2/T)*tan(ws/2);
Rp = 1; %% ripple factor
As = 15; %% attenuation factor
N = ceil(log10((10^(Rp/10)-1)/(10^(As/10)-1))/(2*log10(Op/Os)));
% Butterworth order of filter
Oc = Op/((10^(Rp/10)-1)^(1/(2*N)));
% cutoff f of butterworth filter

% designing analog filter

[num,den] = butter(N, Oc, 'bandpass','s'); % analogue butterworth prototype s dom.

[b,a] = bilinear(num, den, Fs);
% A/D conversion by bilinear transform to z domain

%% Frequency response
[H,W] = freqz(b,a); %in built comm for freq.resp. of filter

subplot(2,1,1)
plot(W./pi,abs(H)); %plot of lowpass filter using butterworth prot.
title('Bandpass using Butterworth');
xlabel('Normalized Frequency (\omega/\pi');
ylabel('Magnitude Response of LPF |H(\omega)|');
ylim([-0.2,1.2]);
grid on;

subplot(2,1,2)
[num,den] = butter(N, Oc, 'stop','s');
[b,a] = bilinear(num, den, Fs);
[H,W] = freqz(b,a);
plot(W./pi,abs(H))
title('Bandstop using Butterworth');
xlabel('Normalized Frequency (\omega/\pi');
ylabel('Magnitude Response of LPF |H(\omega)|');
ylim([-0.2,1.2]);
grid on;