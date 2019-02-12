function testEspectral2DGrogono()
  
  vec = generadorGrogono(20000);
  
  for i = 1:2:10000
    
    x(end+1) = vec(i);
    y(end+1) = vec(i+1);
      
  endfor
  
  plot(x,y,'o')
  title("Test Espectral 2D para el generador Grogono")
  
endfunction