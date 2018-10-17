function y = crecimientoExponencial(alfa, x0, n)
  y(end+1)= x0;
  x = x0;
  t(end+1)=0;
  for i = 1: n 
    x = alfa*x;
    y(end+1) = x;
    t(end+1) =i;
  endfor
  
  plot(t,y)
endfunction