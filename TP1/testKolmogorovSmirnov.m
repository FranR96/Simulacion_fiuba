%Si no funciona poner, pkg load statistics

function y=testKolmogorovSmirnov(alfa)
  x=generadorNormal(35,5);
  x=sort(x);
  %Genero un vector que tiene la distribución acumulada en cada x(i)
  acumulada=normcdf(x,35,5);
  q=0;
  for i = 1:100000
    q=max(q,abs(acumulada(i)-(i/100000)));
  endfor
    if q>sqrt((-1/200000)*log(alfa/2))
      y="Acepto H0";
    else
      y="Rechazo H0";
    endif
endfunction
