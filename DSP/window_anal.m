N=4; %size of x
l=(N-1)/2;
r=zeros(1,2*l+1);
han=zeros(1,2*l+1);
ham=zeros(1,2*l+1); 
blk=zeros(1,2*l+1);
for i=1:(2*l+1)
 n=i-(l+1);
 r(i)=1;
 han(i)=0.5+0.5*cos(2*pi*n/N);
 ham(i)=0.54+0.46*cos(2*pi*n/N);
 blk(i)=0.42+0.5*cos(2*pi*n/(N-1))+0.08*cos(4*pi*n/(N-1));
 n=n+1;
end
% Triangular window
N=5
l=(N-1)/2;
tri=zeros(1,2*l+1);
for t=0:(N-1)/2
    tri(t+1)= (2*t)/(N-1);
end
for t=(N-1)/2:N-1
        tri(t+1)= 2-[2*t/(N-1)];
end
%rectangular window
r1=fftshift(fft(r,1000)); 
y1=abs(r1)/max(r1);
r2=20*log10(y1);
subplot(5,2,1);
plot(r);
title("time domain of rectangular window");
subplot(5,2,2);
plot(r2);
title('frequency domain of rectangular window');
%hanning window
han1=fftshift(fft(han,1000)); 
w1=abs(han1)/max(han1);
han2=20*log10(w1);
subplot(5,2,3);
plot(han)
title("time domain of hanning window");
subplot(5,2,4);
plot(han2);
title('frequency domain of hannning window');
%hamming window
ham1=fftshift(fft(ham,1000)); 
a1=abs(ham1)/max(ham1);
ham2=20*log10(a1);
subplot(5,2,5);
plot(ham);
title("time domain of hamming window");
subplot(5,2,6);
plot(ham2);
title('frequency domain of hamming window');
%blackman window
blk1=fftshift(fft(blk,1000)); 
b1=abs(blk1)/max(blk1);
blk2=20*log10(b1);
subplot(5,2,7);
plot(blk);
title("time domain of blackman window");
subplot(5,2,8);
plot(blk2);
title("frequency domain of blackman window");
%triangular window
tri1=fftshift(fft(tri,1000)); 
c1=abs(tri1)/max(tri1);
tri2=20*log10(c1);
subplot(5,2,9);
plot(tri);
title("time domain of triangular window");
subplot(5,2,10);
plot(tri2);
title("frequency domain of triangular window");