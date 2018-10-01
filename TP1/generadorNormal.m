function z= generadorNormal(media,desvioEstandar)
  
   c = sqrt(2*exp(1)/pi);
  i=0;
  while i <100000
    j=rande();
    u=rand();
    if u<((exp(-j.^2/2)/sqrt(2*pi))/(c*exp(-j)))
      w=rand();
      if w<0.5
        z(end + 1)=round(1000*(desvioEstandar*j+media))/1000;
      else
        z(end+1)=round(1000*(desvioEstandar*(-j)+media))/1000;
      endif
      i=i+1;
    endif
  endwhile
 
  
endfunction