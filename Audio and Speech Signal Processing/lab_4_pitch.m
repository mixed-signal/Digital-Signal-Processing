
%% Recording Speech and plotting it
fs=10000;
recorder=audiorecorder(fs,8,1)
disp('start recording')
recordblocking(recorder,10);
disp('end of recording. play back...');
play(recorder);
x=getaudiodata(recorder);
filename='speech_lab.wav';
audiowrite('speech_lab.wav',x,10000);
info=audioinfo(filename);
disp(info);
[x,fs]=audioread('speech_lab.wav');
figure(1);
plot(x);
xlabel('Sample Number');
ylabel('Amplitude')

