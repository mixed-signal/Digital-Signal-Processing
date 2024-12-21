clear all;
wp=0.51*pi;
ws=0.47*pi;
tr_width=abs(ws-wp);
wc=(wp+ws)/2;


% Hanning window

M=ceil(6.2*pi/tr_width)+1;
if(rem(M,2)==0)
    M=M+1;
end
w_n=(hann(M));
n=-(M-1)/2:(M-1)/2;
fc=wc/(2*pi);
hd=-2*fc*(sinc(2*fc*n));
hd(((M-1)/2)+1)=1-2*fc;
h=hd.*w_n';
[HW,WW]=freqz(h,1);
subplot(2,2,1);
stem(n,w_n);
title('Hanning Window Function')
xlabel('n');
legend('101906028') ;
ylabel('W(n)');
grid on;
subplot(2,2,2);
plot(WW./pi,abs(HW));
title('High Pass Filter using Hanning Window Function')
legend('101906028') ;
xlabel('Normalised frequency(\omega/\pi)');
ylabel('magnitute response of HPF|H(\omega)|');


%Hamming window

M=ceil(6.6*pi/tr_width)+1;
if(rem(M,2)==0)
    M=M+1;
end
w_n=(hamming(M));
n=-(M-1)/2:(M-1)/2;
fc=wc/(2*pi);
hd=-2*fc*(sinc(2*fc*n));
hd(((M-1)/2)+1)=1-2*fc;
h=hd.*w_n';
[HW,WW]=freqz(h,1);
subplot(2,2,3);
stem(n,w_n);
title('Hamming Window Function')
legend('101906028') ;
xlabel('n');
ylabel('W(n)');
grid on;
subplot(2,2,4);
stem(WW./pi,abs(HW));
title('High Pass Filter using Hamming Window')
legend('101906028') ;
xlabel('Normalised frequency(\omega/\pi)');
ylabel('magnitute response of HPF|H(\omega)|');
grid on;
