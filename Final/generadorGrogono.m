function z = generadorGrogono(n)
  semilla=99429;
  for i = 1:n
    y= mod((25173*semilla+13849),(2^16));
    semilla= y;
    z(end + 1)=y/(2^16);
  endfor
endfunction
