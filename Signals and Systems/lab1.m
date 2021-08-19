clc;
clear all;

a = (2^5)/((2^5)-1);

b = 3*((sqrt(5) - 1)/(sqrt(5) + 1)^2) -1;

r = (pi^(1/3)-1);
area = pi* r^(2);

%% Exponent %%
c = exp(3);
%% ln %%
d = log(exp(3));

%% log to the base 10 %%
e = log10(exp(3));


%% Trigonometric %%

q = sin(pi/6);
p = (cosh(32*pi))^2 - (sinh(32*pi))^2;

%% complex %%

w = (1 + 3i)/(1 - 3i);

z = imag(w);

%% plotting -- plot subplot ylabel xlabel axis hold on figure %%

%% plotting a unit circle
th = linspace(0, 2*pi, 100);
radius = 1;
m = radius * cos(th);
n = radius * sin(th);

hold on
subplot(2,2,3)
plot(m,n,'--')
legend('circle')
axis('equal')
subplot(2,2,1)
plot(m,'r')
legend('x')
subplot(2,2,2)
plot(n)
legend('y')


subplot(2,2,4)
hold on
plot(m)
plot(n)
plot(m,n,'--')
legend('x&y&circle')

