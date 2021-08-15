r=8.314
h=6.626e-34
K=1.38e-23
thetaD=345
v=(K*thetaD/(h))
t=linspace(1,3000,1000)
for i=1:1000
 Cv2(i)=3*r*(h*v/(K*t(i)))^2*(exp(h*v/(K*t(i)))/((exp(h*v/(K*t(i))))-1)^2)
end
plot(t,Cv2,'b')
t1=linspace(1,3000,1000)
function y1=f(x)
 y1=(((x.^4)*(exp(x)))/((exp(x)-1).^2))
endfunction
i=1
for T=1:1:3000
z(i)=T
x(i)=(h*v)/(K*T)
y(i)=9*r*((T/thetaD).^3)*(intg(0,(thetaD/T),f))
i=i+1
end
plot(z,y,'r')
title('specific heat V/s temperature for Einstein Law and Debye Law','fontsize',5)
xlabel('Temperature(Kelvin)','fontsize',5)
ylabel('Specific Heat','fontsize',5)
xgrid()
