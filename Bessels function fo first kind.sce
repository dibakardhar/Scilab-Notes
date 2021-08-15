X=0:.1:20
J=zeros(5,201)
for i=0:3
 J(i+1,:)=besselj(i,X)
end
plot(X,J,'line width',2)
xtitle('Bessel function of the first kind for v=0,1,2,3,4')
xlabel('X')
ylabel('J v(X)')
axis([0 20-.5 1])
