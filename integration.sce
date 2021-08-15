function y=f(x)
 y=1/((x^2)+2);
endfunction
b=input("Enter initial limit:")
d=input("Enter final limit:")
c=intg(b,d,f)
disp(c)
