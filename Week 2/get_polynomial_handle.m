function fh = poly_fun(p)
  function polynomial = poly(x)
    polynomial = 0; 
   n = length(p)-1; 
    polynomial = sum(p.*x.^(n:-1:0));
  end
  fh = @poly;
end