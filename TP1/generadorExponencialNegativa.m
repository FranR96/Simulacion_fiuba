function y= generadorExponencialNegativa()
  i=1;
  lambda=1/15;
  numerosGenerados= generadorAleatorioLineal(100000);
  while i <= 100000
    y(end+1) = -log(1-numerosGenerados(i))/(lambda);
    i =i+1;
  endwhile
endfunction
