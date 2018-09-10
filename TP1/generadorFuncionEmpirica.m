function y= generadorFuncionEmpirica()
   numerosGenerados= generadorAleatorioLineal(100000);
   i=1;
   while i <= 100000
     if numerosGenerados(i)<0.5
       y(end+1)=1;
     elseif 0.5<numerosGenerados(i)<0.7
       y(end+1)=2;
     elseif 0.7<numerosGenerados(i)<0.8
       y(end+1)=3;
     elseif 0.8<numerosGenerados(i)<1
       y(end+1)=4;
     endif
     i=i+1;
   endwhile
endfunction
