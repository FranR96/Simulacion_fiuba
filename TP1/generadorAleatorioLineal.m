function z = generadorAleatorioLineal(n)
  semilla=98639;
  for i = 1:n
    y= mod((1013904223*semilla+1664525),2^32);
    semilla= y;
    z(end + 1)=y/(2^32);
  endfor
endfunction