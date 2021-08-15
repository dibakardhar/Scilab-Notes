clc
e=3.795;
hcut_per_c=1973;
m=0.511*(10^6);
a=((hcut_per_c)^2)/(m*(e^2));
n=input("enter the energy state n :");
function zprim=f(r, z)
 zprim(1)=z(2)
 zprim(2)=-(-(1/(a*n)^2)+(2/(a*r)))*z(1)
endfunction
i=input("Enter the scale pan along r axis : ")
r0=0.00001;rmax=i*a;
r=r0:0.01*a:rmax;
z0=0;zprim0=2/((n*a)^(3/2));
y=ode([z0;zprim0],r0,r,f);
u=y(1,:);
R=u./r;
p=R.*R;
D=(r.^2).*p; 
plot(r,R,"r");
plot(r,D,"b");
xlabel("r(CGS)");
ylabel("Wave function and probability");
xtitle("Plot of s-wave for Hydrogen atom");
legend("Wave funcion","Probability");
 