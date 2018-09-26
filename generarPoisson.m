function y = generarPoisson()

  vec = exprnd(7,100);
  t = 0;
 
  for i = 1:100
  
    y(end+1)=t;
    t = t + vec(i);
    
  endfor
  

endfunction