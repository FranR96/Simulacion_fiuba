function y = gaptest1()

  vec = generadorAleatorioLineal(3000);
  j = 0;
  for i = 1:3000
    if ((vec(i) <= 0.6) && (vec(i) >= 0.2))
      y(end +1)=j;
      j=0;
    else
      j=j+1;
    end
  endfor    

endfunction