function testEspectral3D()
  
  vec = minimalStandard32bits(18000);
  
  for i = 1:3:6000
    
    x(end+1) = vec(i);
    y(end+1) = vec(i+1);
    z(end+1) = vec(i+2);
  
  endfor

  plot3(x,y,z,'o')
  title("Test Espectral 3D para el Minimal Standard")
  
endfunction