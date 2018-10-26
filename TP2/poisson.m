%falta terminar opcion 1 y calcular tiempos
%ahora muestra el grafico de lo que espero cada solicitud
function poisson()
  cantidadLlamadas = 50; %100000;
  mediaTiempoLLegada = 4;
  mediaOpcion2 = 0.8;
  TiempoLlegada(1) = exprnd(mediaTiempoLLegada);
  TiempoOpcion2 = 0;
   
  i=1;
  while i <= cantidadLlamadas; 
    
    if(TiempoLlegada(i) >= TiempoOpcion2)
      ResultadoOpcion2(i) = 0;
    else 
      ResultadoOpcion2(i) = TiempoOpcion2 - TiempoLlegada(i);
    endif
    %opcion 2 exponencial con u = 0,8 
    TiempoOpcion2 = TiempoLlegada(i) + exprnd(mediaOpcion2);
    TiempoLlegada(i+1) = TiempoLlegada(i) + exprnd(mediaTiempoLLegada);    
    
    
    i=i+1;
  end
  
 
 
  plot(ResultadoOpcion2);


 endfunction 
