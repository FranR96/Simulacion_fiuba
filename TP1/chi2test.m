
% Pasarle un vector de numeros aleatorios que siguen una distribucion geometrica
% p:
% 0.5 para ej 6 y para gap test (0.5-1)
% 0.4 para gap test (0.2-0.6)
function y = chi2test(vec, cuant, p)
  
  bins = 9;
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
  
  %Para 9 grados de libertad:
  % 1% ------- 21.7
  % 5% ------- 16.9
  cuantil = cuant;
  
  if (dcuadrado < cuantil)
    y = "No rechazo hipotesis";
  else
    y = "Rechazo hipotesis";
  end
  
endfunction
