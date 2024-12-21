%to find pitch period of the signal using spectral autocorrelation of
%voiced speech
clear all;
fp=fopen('speech_lab1.wav');
fseek(fp,40500,-1);
a=fread(fp,1024);
subplot(2,1,1);plot(a);title('plot of voiced part of a signal');
xlabel('sample no.');ylabel('amplitude');
b=abs(fft(a));
f=22100/1024:22100/1024:22100;
subplot(2,1,2);plot(f,b);title('plot of fft of a signal');
xlabel('frequency');ylabel('amplitude');
for k=1:400,
sum(k)=0;
end
for k=1:400,
for i=1:45,
sum(k)=sum(k)+(b(i)*b(i+k));
sum(k)=sum(k)/52000;
end
end
figure;
plot(sum);title('plot of spectral correlation of voiced signal');
xlabel('sample no.');ylabel('correlation');