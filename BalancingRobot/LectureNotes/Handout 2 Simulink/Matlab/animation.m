function animation(xout,yout)

x=xout.Data;
y=yout.Data;

figure(1)
for i=1:length(x)
    clf
    plot(x(i),y(i),'*')
    axis([0 10 0 5])
    M(i) = getframe
end;
movie(M,6)