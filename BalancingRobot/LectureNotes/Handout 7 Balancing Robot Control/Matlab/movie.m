for i=1:length(simout.time)
    x=simout.data(i,1);
    theta=simout.data(i,2);
    figure(1)
    plot(x,0,'o',x-l*sin(theta),l*cos(theta),'o')
    line([x x-l*sin(theta)],[0 l*cos(theta)])
    axis([-2 2 -2 2])
    pause(Ts);
end;
    