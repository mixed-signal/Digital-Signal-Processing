%to find spectrum tilt for speech signal
clear all;
fp=fopen('speech_lab1.wav');
fseek(fp,3044,-1);
a=fread(fp,20000,'short');
subplot(2,1,1);plot(a);title('plot of speech signal');
xlabel('sample no.');ylabel('amplitude');
for j=1:800,
fseek(fp,44+100*j,-1);
a=fread(fp,100);
sum(j)=0;
for i=2:100,
sum(j)=sum(j)+(a(i)*a(i-1));
end
sum1(j)=0;
for i=2:100,
if a(i)==0,
a(i)=0.1;
end
sum1(j)=sum1(j)+a(i)*a(i);
end
s(j)=sum(j)/sum1(j);
end
subplot(2,1,2);plot(s);title('plot of spectrum tilt of speech signal');
xlabel('segment number');ylabel('value of spectrum tilt');