function promedio = tiempoSinProcesar(z)
  cant0 = 0;
  for i =1:100000
    if z(i)==0
      cant0 =cant0 +1;
    endif
  endfor
  promedio = cant0/100000;
endfunction
