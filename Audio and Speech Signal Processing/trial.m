% Part D
z1 = cconv(x1,x2,4)
x3 = fft(x1)
x4 = fft(x2)
x5 = x3 .* x4
x6 = ifft(x5)
% x6 is same as Z1