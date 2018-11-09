function [r,x]=graficarBifurcacion()
  
  for i = -20:20
    r(end+1)= i;
    x(end+1)=0;
    y(end+1)=(1-i)/i;
  endfor
  plot(r,x,'b',r,y,'r')
endfunction
