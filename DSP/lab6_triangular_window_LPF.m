clc
clear
close

wp = 0.2*pi;
ws = 0.5*pi;
tr_width = abs(ws-wp);
wc = (wp+ws)/2;

M = ceil(1.8*pi/tr_width)+1;
w_n = (bartlett(M));

n = -(M - 1)/2 : (M - 1)/2;
fc = wc/(2*pi);
hd = 2*fc*(sinc(2*fc*n));

h = hd.*w_n';

[HW, WW] = freqz(h,1);

subplot(221);
stem(n,w_n);
title('Window function discrete(101906028)');
xlabel('n');
ylabel('w[n]');
grid;

subplot(222);
plot(n,w_n);
title('Window function continuous(101906028)');
xlabel('t');
ylabel('w[t]');
axis([-4 4 0 1.5]);
grid;

subplot(223)
stem(WW./pi,abs(HW));
title('Low Pas filter discrete (101906028)');
xlabel('Frequency');
ylabel('Magnitude response of LPF');

subplot(224)
plot(WW./pi,abs(HW));
title('Low Pas filter continuous (101906028)');
xlabel('Frequency');
ylabel('Magnitude response of LPF');