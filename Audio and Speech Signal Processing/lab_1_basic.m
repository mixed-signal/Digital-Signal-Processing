%To plot unit step, unit impulse, ramp and exponential signals in
%continuous and discrete time domain.

n = [-50:50];
% UNIT IMPULSE
x1 = [(n-0)==0];
subplot(4,2,1);
stem(n,x1);
xlabel('n');
ylabel('amplitude');
legend('unit impulse');
title('Unit Impulse Function 101906028 in DT Domain');

subplot(4,2,2);
plot(n,x1);
xlabel('t');
ylabel('amplitude');
legend('unit impulse');
title('Unit Impulse Function 101906028 in CT Domain');


% UNIT STEP
x2 = [(n-0)>=0];
subplot(4,2,3);
stem(n, x2);
xlabel('n');
ylabel('amplitude');
legend('unit step');
title('Unit Step Function 101906028 in DT Domain');

subplot(4,2,4);
plot(n, x2);
xlabel('t');
ylabel('signal');
legend('unit step');
title('Unit Step Function 101906028 in CT Domain');


% RAMP
x3 = n.*x2;
subplot(4,2,5);
stem(n, x3);
xlabel('n');
ylabel('amplitude');
legend('ramp');
title('Ramp Function 101906028 in DT Domain');

subplot(4,2,6);
plot(n, x3);
xlabel('t');
ylabel('amplitude');
legend('ramp');
title('Ramp Function 101906028 in CT Domain');

% EXPONENTIAL
n = (-2:0.5:10);
x4 = exp(n/2);
subplot(4,2,7);
stem(n, x4);
xlabel('n');
ylabel('amplitude');
legend('exp');
title('Exponetial Function 101906028 in DT Domain');

subplot(4,2,8);
plot(n, x4);
xlabel('t');
ylabel('amplitude');
legend('exp');
title('Exponetial Function 101906028 in CT Domain');