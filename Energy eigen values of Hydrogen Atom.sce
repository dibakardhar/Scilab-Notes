clc
h=[5,5,5,5,5];
n=[1,2,3,4,5];
E0=input("Enter the value of ground state in eV : ")'
En=E0./(n^2);
barh(En,h,0.01,"black");
ylabel("Energy eigen valuee En(eV) - - - - ->");
xtitle('Plot of energy eigen values of Hydrogen atom');
legend("$En=\frac{E0}{n^2}$",[5]);
