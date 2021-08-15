clc
k=8.617e-5
t=100
u=k*t
b=1/u;
r=linspace(0.01,5*u,100)'
for i=1:100
f(i)=1/(exp(b*(r(i)-u))+1)
e(i)=1/(exp(b*(r(i)-u))-1)
v(i)=1/exp(b*(r(i)-u))
end
subplot(2,2,1)
plot(r,f,'r')
plot(r,e,'g')
plot(r,v,'b')
xlabel('Energy--->>','fontsize',4)
ylabel('Occupation number-->','fontsize',4)
title('Occupation number v/s Energy for maxwell,bose and fermi statistics','fontsize',4)
K1=0; //Maxwell-Boltzmann Statistics 
K2=1; //Fermi-Dirac Statistics 
K3=-1; //Bose-Einstien Statistics T1=1;
T2=5;
T3=10;
T4=20;
u=0;
x=linspace(1,50,100);
for i=1:100
 v1(i)=1/(exp(x(i)/T1)+K1);
 v2(i)=1/(exp(x(i)/T2)+K1);
 v3(i)=1/(exp(x(i)/T3)+K1);
 v4(i)=1/(exp(x(i)/T4)+K1);
end
subplot(2,2,2)
plot(x,v1,'c')
plot(x,v2,'b')
plot(x,v3,'g')
plot(x,v4,'k')
xgrid
legend(['T1';'T2';'T3';'T4'])
xlabel('Energy','fontsize',3)
ylabel('occupation number','fontsize',3)
title('occupation number v/s Energy for M-B Statistics','fontsize',3)
y=linspace(-50,50,100);
for i=1:100
 w1(i)=1/(exp(y(i)/T1)+K2);
 w2(i)=1/(exp(y(i)/T2)+K2);
 w3(i)=1/(exp(y(i)/T3)+K2);
 w4(i)=1/(exp(y(i)/T4)+K2);
 end
subplot(2,2,3)
plot(y,w1,'c')
plot(y,w2,'b')
plot(y,w3,'g')
plot(y,w4,'k')
xgrid
legend(['T1';'T2';'T3';'T4'])
xlabel('Energy','fontsize',3)
ylabel('occupation number','fontsize',3)
title('occupation number v/s Energy for F-D Statistics','fontsize',3)
x=linspace(1,50,100);
for i=1:100
 m1(i)=1/(exp(x(i)/T1)+K3);
 m2(i)=1/(exp(x(i)/T2)+K3);
 m3(i)=1/(exp(x(i)/T3)+K3);
 m4(i)=1/(exp(x(i)/T4)+K3);
 end
subplot(2,2,4)
plot(x,m1,'c')
plot(x,m2,'b')
plot(x,m3,'g')
plot(x,m4,'k')
xgrid
legend(['T1';'T2';'T3';'T4'])
xlabel('Energy','fontsize',3)
ylabel('occupation number','fontsize',3)
title('occupation number v/s Energy for B-E Statistic','fontsize',3)
