A = audioread('A.WAV');
E = audioread('E.WAV');
I = audioread('I.WAV');
O = audioread('O.WAV');
U = audioread('U.WAV');
W = window(@chebwin,500);
N = window(@chebwin,50);
subplot(5,3,1)
stem(A)
ylabel('Amplitude');
xlabel('time');
title('A')
grid on;
subplot(5,3,4)
stem(E)
ylabel('Amplitude');
xlabel('time');
title('E')
grid on;
subplot(5,3,7)
stem(I)
ylabel('Amplitude');
xlabel('time');
title('I')
grid on;
subplot(5,3,10)
stem(O)
ylabel('Amplitude');
xlabel('time');
title('O')
grid on;
subplot(5,3,13)
stem(U)
ylabel('Amplitude');
xlabel('time');
title('U')
grid on;
subplot(5,3,2)
spectrogram(A, W);
ylabel('Frequency');
xlabel('time');
title('A')
grid on;
subplot(5,3,5)
spectrogram(E, W);
ylabel('Frequency');
xlabel('time');
title('E')
grid on;
subplot(5,3,8)
spectrogram(O, W);
ylabel('Frequency');
xlabel('time');
title('I')
grid on;
subplot(5,3,11)
spectrogram(I, W);
ylabel('Frequency');
xlabel('time');
title('O')
grid on;
subplot(5,3,14)
spectrogram(U, W);
ylabel('Frequency');
xlabel('time');
title('U')
grid on;
subplot(5,3,3)
spectrogram(A, N);
ylabel('Frequency');
xlabel('time');
title('A')
grid on;
subplot(5,3,6)
spectrogram(E, N);
ylabel('Frequency');
xlabel('time');
title('E')
grid on;
subplot(5,3,9)
spectrogram(O, N);
ylabel('Frequency');
xlabel('time');
title('I')
grid on;
subplot(5,3,12)
spectrogram(I, N);
ylabel('Frequency');
xlabel('time');
title('O')
grid on;
subplot(5,3,15)
spectrogram(U, N);
ylabel('Frequency');
xlabel('time');
title('U')
grid on;