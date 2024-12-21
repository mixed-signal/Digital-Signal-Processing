x = [6 0 -2 8]; 
N = length(x); 
X = zeros(4,1); 
for k = 0:N-1 
 for n = 0:N-1 
 X(k+1) = X(k+1) + x(n+1)*exp((-1i)*2*pi*n*k/N); 
 end 
end
chk = fft(x);
i=length(x); 
s=zeros(4,1); 
for a = 0:N-1 
 for b = 0:N-1 
 s(a+1) = s(a+1) + X(b+1)*exp((1i)*pi*2*a*b/N); 
 end 
 s(a+1) = s(a+1)/N
end 
chk2 = ifft(X);
t=0:N-1;
subplot(221) 
stem(t,X); 
xlabel('Frequency'); 
ylabel('|X(k)|'); 
title('DFT-Magnitude response 101906028')
subplot(222) 
stem(t,angle(X));  
xlabel('Frequency'); 
ylabel('Phase(inv)'); 
title('DFT-Phase response 101906028')
subplot(224) 
stem(t,angle(s)) 
xlabel('Frequency'); 
ylabel('Phase'); 
title('IDFT-Phase response 101906028')
subplot(223) 
stem(t,s);  
xlabel('Frequency'); 
ylabel('|inv(X)|'); 
title('IDFT-Magnitude response 101906028')