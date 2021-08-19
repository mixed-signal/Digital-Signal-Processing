%% Convolution without the conv function %%
%% xn = 1019 %%
%% hn = 06028 %%

x = [1,0,1,9];
y = [0,6,0,2,8];

k = zeros(4,5);


for i = 1:4
    for j = 1:5
       k(i,j) =  x(i) * y(j);
    end
end

m = zeros(8,1);
        
for i = 1:4
    tmp = k(1:i,1:i);
    m(i,1) = sum(diag(flip(tmp)));
end

for i = 1:4
    tmp = k(i:4,i+1:5);
    m(i+4,1) = sum(diag(flip(tmp)));
end
    





        