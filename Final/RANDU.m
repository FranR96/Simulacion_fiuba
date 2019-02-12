function z = RANDU(n)
  semilla=99429;
  for i = 1:n
    y= mod((65539*semilla),(2^31));
    semilla= y;
    z(end + 1)=y/((2^31));
  endfor
endfunction
