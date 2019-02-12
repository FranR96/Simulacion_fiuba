function z = productoAZ(n)
   semilla=99429;
  for i = 1:n
    y= mod((16807*semilla),(2^31)-1);
    semilla= y;
    z(end + 1)=16807*semilla;
  endfor
endfunction
