function z = minimalStandard32bits(n)
  a = 16807;
  m = 2147483647;
  q = 127773; #(* m div a *)
  r = 2836; #(* m mod a *)
  semilla = 99429;
  for i =1:n
    hi = semilla/q;
    lo = mod(semilla,q);
    test = (a * lo) - (r * hi);
    if(test > 0)
      semilla = test;
    else
      semilla = test + m;
    endif
    z(end+1)=round(semilla)/m;
  endfor
endfunction
