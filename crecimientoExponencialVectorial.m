function y = crecimientoExponencialVectorial(a,b,c,d,x0,y0,n)

  y(end+1) = y0;
  x(end+1) = x0;
  auxx = x0;
  auxy = y0;
  
  for i = 1: n 
    x(end+1) = a*auxx+c*auxy;
    y(end+1) = b*auxx+d*auxy;
    
    auxx=x(end);
    auxy=y(end);
    
  endfor
  
 plot(x,y,"o-")

  
endfunction