function [y,z] =simularServidor(n)
  F = [0.975,0.975,1;0.942,0.975,1;0.967,1,1];
  x=[1,0,0];
  y(end+1)=0;
  z(end+1)=0;
  
  for i = 1:n
    u = rand();
    M = x*F;
    
    if(u<=M(1))
       z(end+1)=z(end);
    elseif(M(1)<u && u<=M(2))
      if(z(end)==0)
        z(end+1)=z(end);
      else
        z(end+1)=z(end)-1;
      endif
    elseif(M(2)<u && u<=M(3))
      if(z(end)==29)
        z(end+1)=z(end);
      else
        z(end+1)=z(end)+1;
      endif
    endif
      
    if(z(end)==0)
      x=[1,0,0];
    elseif(z(end)==29)
      x=[0,0,1];
    else
      x=[0,1,0];
    endif
    y(end+1)=i;
endfor  
    stairs(y,z);
endfunction
