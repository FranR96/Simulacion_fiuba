function y = gaptest2()

  vec = generadorAleatorioLineal(3000);
  j = 0;
  for i = 1:3000
    if ((vec(i) <= 1) && (vec(i) >= 0.5))
      y(end +1)=j;
      j=0;
    else
      j=j+1;
    end
  endfor    

endfunction