function y=simulacionTrenes()
  
  for j = 1:100000
  
   u = rand();
   p = poissrnd(7*u);

   y(end+1)=p ;
  endfor

endfunction