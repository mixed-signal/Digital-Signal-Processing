% function to calc factorial of a number.
function factn = factor(n);
factn = 1;
for k = n:-1:1
    factn = factn*k;

end