
% Pasarle un vector de numeros aleatorios que siguen una distribucion geometrica
function y = chi2test(vec)
  
  bins = 9;
  p = 0.5;
  N = length(vec);
  
  % Vector de ocurrencias de cada numero
  observed = histc(vec, 0:bins)
  
  % Esperado
  for i = 0:bins
    expected(end+1) = N*((1-p)^i)*p;
  endfor
  
  expected
  
  % Formula
  for i = 1:bins
    parcial(end+1) = ((observed(i) - expected(i))^2)/expected(i);
  endfor
  
  dcuadrado = sum(parcial)
  
  %Para 9 grados de libertad (de acuerdo a los bins) y significacion del 0.01
  cuantil = 21.7;
  
  if (dcuadrado < cuantil)
    y = "No rechazo hipotesis";
  else
    y = "Rechazo hipotesis";
  end
  
endfunction
