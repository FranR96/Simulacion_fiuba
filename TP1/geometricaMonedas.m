function y = geometricaMonedas(n)
  
  p = 0.5;
  
  for i = 1:n
    
    cont = 0;
    u = rand();
    
    while (u < p)
      cont = cont + 1;
      u = rand();
    end
    
    y(end+1) = cont;
    
  endfor
  
  [a,b] = hist(y,16);
  g = bar(b,a)
    
endfunction