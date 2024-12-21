x1 = [1,0,1,9];
x2 = [6,0,2,8];
% Part A
N1=length(x1);
N2=length(x2);
N=max(N1,N2);
xn=[x1,zeros(1,N-N1)];
yn=[x2,zeros(1,N-N2)];

xk=zeros(1,N);
for i=0:N-1
    for j=0:N-1
        z=mod(i-j,N);
        xk(i+1)=xk(i+1)+(xn(j+1).*(yn(z+1)));
    end
end
y=conv2(xn,yn)

freqz
