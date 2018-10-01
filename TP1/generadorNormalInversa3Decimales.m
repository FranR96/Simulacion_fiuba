function z = generadorNormalInversa3Decimales(n)
  
  M = [0,0.00003,0.00135,0.00621,0.02275,0.06681,0.11507,0.15866,0.21186,...
  +0.27425,0.34458,0.42074,0.5,0.57926,0.65542,0.72575,0.78814,0.84134,0.88493,0.93319,0.97725,0.99379,0.99865,0.99997;-5,-4,-3,-2.5,-2,-1.5,-1.2,-1,-0.8,-0.6,-0.4,-0.2,0,0.2,0.4,0.6,0.8,1,1.2,1.5,2,2.5,3,4];
  x=M(1,:);
  y=M(2,:);
  p = splinefit(x,y,8,"order",4);
  u=generadorAleatorioLineal(n);
  for i = 1:n
    z(end+1) =round(1000 * (ppval(p,u(i))) )/ 1000;
  endfor
endfunction
