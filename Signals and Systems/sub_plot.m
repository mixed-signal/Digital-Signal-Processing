function [ x, n ] = sub_plot(n0, n1, n2 )
n = [n1:n2];
x1 = [(n-n0)==0];
subplot(3,1,1);
stem(n,x1)
xlabel('time')
ylabel('signal')
legend('unit impulse')
title('Unit Impulse Function 101906028')


x2 = [(n-n0)>=0];
subplot(3,1,2);
stem(n, x2);
xlabel('time');
ylabel('signal');
legend('unit step');
title('Unit Step Function 101906028');

x3 = [n>0] - [n<0]
subplot(3,1,3);
stem(n, x3);
xlabel('time');
ylabel('signal');
legend('Signum');
title('Signum 101906028');
end

