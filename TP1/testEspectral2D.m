function testEspectral2D()
  
  vec = generadorAleatorioLineal(2000);
  
  for i = 1:2:1000
    
    x(end+1) = vec(i);
    y(end+1) = vec(i+1);
      
  endfor
  
  plot(x,y,'o')
  
endfunction