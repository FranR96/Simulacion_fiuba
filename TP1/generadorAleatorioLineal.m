function z = generadorAleatorioLineal(n)
  semilla=100282;
  for i = 1:n
    y= mod((1013904223*semilla+1664525),2^32);
    semilla= y;
    y= y/(2^32);
    z(end + 1)=y;
  endfor
endfunction