x=[2 2 3 4 5 6]'
y=[5 6 19 38 78 115]'
plot2d(x,y,-3)
X=[x ones(x)];
a=X\y;
xx=[0:.01:7]
disp(a(2),"The coefficient a(2) is")
yy=[a(1)*xx+a(2)]
plot2d(xx,yy,2)
disp(a(1),"The coefficient a(1) is")
