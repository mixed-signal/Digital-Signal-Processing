freq=input('frequency');
amp=input('amplitude');
phase=input('phase');
t = linspace(-10,10,500);
phase_in_rad = degtorad(phase);
y =amp * sin(2 * pi * freq * t + phase_in_rad);
subplot(1,2,1)
plot(t, y);
xlabel('Time');
ylabel('Sine wave 1');

freq1=input('frequency');
amp1=input('amplitude');
phase=input('phase');
t1 = linspace(-10,10,500);
phase_in_rad = degtorad(phase);
y1 =amp1 * sin(2 * pi * freq1 * t1 + phase_in_rad);
subplot(1,2,2)
plot(t1, y1);
xlabel('Time');
ylabel('Sine wave 2');