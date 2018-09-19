function testEspectral3D()
  
  vec = generadorAleatorioLineal(9000);
  
  for i = 1:3:3000
    
    x(end+1) = vec(i);
    y(end+1) = vec(i+1);
    z(end+1) = vec(i+2);
  
  endfor

  plot3(x,y,z,'o')
  
endfunction