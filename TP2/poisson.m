function poisson()
  cantidadLlamadas = 100000;
  mediaTiempoLLegada = 4; 
  
  pOpcion11 = 0.6;
  mediaOpcion11 = 0.7;
  mediaOpcion12 = 1;
  
  mediaOpcion2 = 0.8;
    
  TiempoLlegada(1) = exprnd(mediaTiempoLLegada);
  tiempoOpcion11 = 0;
  tiempoOpcion12 = 0;
  tiempoOpcion2 = 0;
   
  i=1;
  while i <= cantidadLlamadas;     
    %llega a opcion1
    u = rand();
    if(u < pOpcion11)
      %entro a opcion11
      if(TiempoLlegada(i) >= tiempoOpcion11)
        ResultadoLLegadaOpcion1(i) = 0;
      else
        ResultadoLLegadaOpcion1(i) = tiempoOpcion11 - TiempoLlegada(i);
      endif
      %procesa opcion11
      ResultadoTotalOpcion1(i) = ResultadoLLegadaOpcion1(i) + exprnd(mediaOpcion11);
      tiempoOpcion11 = TiempoLlegada(i) + ResultadoTotalOpcion1(i);
    else
      %entro a opcion12
      if(TiempoLlegada(i) >= tiempoOpcion12)
        ResultadoLLegadaOpcion1(i) = 0;
      else
        ResultadoLLegadaOpcion1(i) = tiempoOpcion12 - TiempoLlegada(i);
      endif
      %procesa opcion12
      ResultadoTotalOpcion1(i) = ResultadoLLegadaOpcion1(i) + exprnd(mediaOpcion12);
      tiempoOpcion12 = TiempoLlegada(i) + ResultadoTotalOpcion1(i);
    endif
    
    %llega a opcion2
    if(TiempoLlegada(i) >= tiempoOpcion2)
      ResultadoLLegadaOpcion2(i) = 0;
    else 
      ResultadoLLegadaOpcion2(i) = tiempoOpcion2 - TiempoLlegada(i);
    endif   
    %procesamientoOpcion2
    ResultadoTotalOpcion2(i) = ResultadoLLegadaOpcion2(i) + exprnd(mediaOpcion2);
    tiempoOpcion2 = TiempoLlegada(i) + ResultadoTotalOpcion2(i);
            
    TiempoLlegada(i+1) = TiempoLlegada(i) + exprnd(mediaTiempoLLegada);    
        
    i=i+1;
  end
 
  
  printf("Tiempo medio de espera opcion1 %d\n", mean(ResultadoLLegadaOpcion1));
  printf("Tiempo medio de espera opcion2 %d\n\n", mean(ResultadoLLegadaOpcion2));
  
  printf("Sin espera opcion1: %f%%\n", sum(ResultadoLLegadaOpcion1==0)*100/cantidadLlamadas);
  printf("Sin espera opcion2: %f%%\n\n", sum(ResultadoLLegadaOpcion2==0)*100/cantidadLlamadas);
  
  tiempoMedioResolucion1 = mean(ResultadoTotalOpcion1);
  tiempoMedioResolucion2 = mean(ResultadoTotalOpcion2);
  
  printf("Tiempo medio de resolucion opcion1 %d\n", tiempoMedioResolucion1);
  printf("Tiempo medio de resolucion opcion2 %d\n\n", tiempoMedioResolucion2);
  
  subplot (2, 2, 1)
  hist(ResultadoLLegadaOpcion1,100);
  title("Tiempos de espera opcion 1");
  subplot (2, 2, 2)
  hist(ResultadoLLegadaOpcion2,100);
  title("Tiempos de espera opcion 2");
  subplot (2, 2, 3)
  hist(ResultadoTotalOpcion1,100);
  title("Tiempos de procesamiento con espera opcion 1");
  subplot (2, 2, 4)
  hist(ResultadoTotalOpcion2,100);
  title("Tiempos de procesamiento con espera opcion 2");


 endfunction 
