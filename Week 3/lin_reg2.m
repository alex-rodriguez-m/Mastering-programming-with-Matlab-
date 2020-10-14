function [a,b] = lin_reg2(x,y)      
XL = [min(x) max(x)];                                % Get X-Limits
P = [x(:), ones(size(x(:)))] \ y(:);                 % Estimate Linear Fit Parameters
LinFit = [XL(:) [1;1]] * P;                          % Linear Fit
a = P(1);
b = P(2); 
end 