function y = gaptest(inicio,fin)

  vec = generadorAleatorioLineal(3000);
  j = 0;
  for i = 1:3000
    if ((vec(i) <= fin) && (vec(i) >= inicio))
      y(end +1)=j;
      j=0;
    else
      j=j+1;
    end
  endfor    

endfunction