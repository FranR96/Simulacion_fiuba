function [y,z] =simularMaquina(n)

  F = [0.95, 1; 0.4, 1];
  x=[1,0];
  y(end+1)=0;
  z(end+1)=x(1);
  
  for i = 1:n
    u = rand();
    M = x*F;
    
    if (u<M(1))
      x=[1,0];
      
    else
      x=[0,1];
      
    endif
  y(end+1)=i;
  z(end+1)=x(1);
endfor  
    plot(y,z)
endfunction