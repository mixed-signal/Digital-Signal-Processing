function [m,n] = gs_circle(radius)
th = linspace(0, 2*pi, 100);
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

end

