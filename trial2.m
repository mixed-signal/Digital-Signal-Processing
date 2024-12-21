x=[1 0 1 9];
h=[6 0 3 3];
m=length(x);
n=length(h);
N=m+n-1;
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-m)];
for n=1:N
    y(1,n)=0;
for i=1:N
    j=n-i+1;
    if(j<=0)
        j=N+j;
    end
    y(1,n)=[y(1,n)+x(1,i)*h(1,j)];
end
end

stem(x);
xlabel('first sequence');
ylabel('value of n');
title('Linear convolution using circular');
legend('Maneet Kaur-101906033');