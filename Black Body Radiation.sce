clc
clf
h=6.626e-34 //planks constant
k=1.38e-23 //boltzmann constant 
c=3e8 //speed of light
t=[1000,1200,1400] //temp (KELVIN) 
n=1400
r=linspace(0.1e-6,15e-6,n)
r0=linspace(5e-6,15e-6,n)
for i=1:n
for j=1:3
u(j,i)=(8*%pi*h*c)/((r(i))^5*(exp(h*c/(r(i)*k*t(j)))-1))
m(j,i)=(8*%pi*k*t(j))/(r0(i))^4
v(j,i)=(8*%pi*h*c)/((r(i))^5*(exp(h*c/(r(i)*k*t(j)))))
end
end
subplot(2,2,1)
plot(r,u(1,:),'r')
plot(r,u(2,:),'g')
plot(r,u(3,:),'b')
xlabel('Wavelength--->','fontsize',3) 
ylabel('Energy--->','fontsize',3)
title('Planks law','fontsize',3)
legend('T1=1000','T2=1200','T3=1400')
xgrid
subplot(2,2,2)
plot(r0,m(1,:),'r')
plot(r0,m(2,:),'g')
plot(r0,m(3,:),'b')
xlabel('Wavelength--->','fontsize',3)
ylabel('Energy--->','fontsize',3)
title('Rayleigh law','fontsize',3)
legend('T1=1000','T2=1200','T3=1400')
xgrid
subplot(2,2,3)
plot(r,u(3,:),'b')
plot(r0,m(3,:),'g')
 
xlabel('Wavelength--->','fontsize',3)
ylabel('Energy --->','fontsize',3)
title('Compare b/w Planks and Rayleigh law','fontsize',3)
legend('(PLANKS)','(RAYLEIGH)')
xstring(1.2e-05,500,'T=1200 K')
xgrid
subplot(2,2,4)
plot(r,u(3,:),'r')
plot(r0,m(3,:),'g')
plot(r,v(3,:),'b--')
xlabel('Wavelength --->','fontsize',3)
ylabel('Energy --->','fontsize',3)
title('Compare b/w Planks,Rayleigh law and Weins law ','fontsize',3)
legend('Planks=r','Rayleugh jeans=g','Weins=b')
xstring(1.2e-05,450,'T=1200 K')
xgrid
