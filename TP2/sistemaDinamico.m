function sistemaDinamico(x0,y0,z0,n)
  
  A = [0.5, -0.5, -1; 1, 1, -1; 0, 0, 1];
  
  v = [x0; y0; z0];
  trayectoria = v;

  
  for i = 1:n 
    
    v = A*v;
    trayectoria = [trayectoria,v];
        
  endfor
  
  x = trayectoria(1,:);
  y = trayectoria(2,:);
  z = trayectoria(3,:);
  
  plot3(x,y,z)
  
endfunction 
