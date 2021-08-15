//
function y=f(r)
 y=(1/sqrt(%pi))*exp(-r)
endfunction
r=[0:0.1:5]
psi=f(r)
subplot(2,1,1)
plot(r,psi)
xlabel("------> r")
ylabel("------> psi")
probability=4*%pi*r.*r.*f(r).*f(r)
subplot(2,1,2)
plot(r,probability)
xlabel("------> r")
ylabel("------> probability distribution")
