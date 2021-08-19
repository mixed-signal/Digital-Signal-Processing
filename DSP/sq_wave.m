freq=input('frequency');
duty=25;
t = linspace(-20,20,1000);
x = square(2*pi*freq*t,duty);
subplot(3,2,1);
plot(t,x);
xlabel('time')
ylabel('signal')
title('continuous square wave 25%')
duty=50;
t = linspace(-20,20,1000);
x = square(2*pi*freq*t,duty);
subplot(3,2,5);
plot(t,x);
xlabel('time')
ylabel('signal')
title('continuous square wave 50%')
duty=75;
t = linspace(-20,20,1000);
x = square(2*pi*freq*t,duty);
subplot(3,2,3);
plot(t,x);
xlabel('time')
ylabel('signal')
title('continuous square wave 75%')

t = linspace(-20,20,1);
x = square(2*pi*freq*t,duty);
subplot(3,2,4)
stem(t,x);
xlabel('time')
ylabel('signal')
title('discrete square wave 75%')

duty = 25;
t = linspace(-20,20,1);
x = square(2*pi*freq*t,duty);
subplot(3,2,2)
stem(t,x);
xlabel('time')
ylabel('signal')
title('discrete square wave 25%')


duty = 50;
t = linspace(-20,20,1);
x = square(2*pi*freq*t,duty);
subplot(3,2,6)
stem(t,x);
xlabel('time')
ylabel('signal')
title('discrete square wave 50% ')

