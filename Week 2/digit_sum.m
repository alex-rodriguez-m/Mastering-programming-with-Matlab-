function output = digit_sum(n)
if n<10
    output=fix(n);
end
if n>0
output=mod(n,10)+digit_sum(fix(n*0.1));
end