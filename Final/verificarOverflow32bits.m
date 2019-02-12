function hayOverflow = verificarOverflow32bits(x)
  intmax = intmax("int32");
  long = length(x);
  hayOverflow = false;
  for i =1:long
    if(x(i)>intmax)
      hayOverflow= true;
    endif
  endfor
endfunction
