% Recursive factorial 
function retval = recursivefactorial(n);
  if ~isscalar(n) || n ~= fix(n) || n < 0 
    error("non-negative integer scalar is expected")
  endif
    if n == 0 
      retval = 1;
    else
      retval = n * fact(n-1);
   endif
endfunction