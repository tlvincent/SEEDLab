Setup_Parameters
close all
phi_0 = pi;
cosphi = cos(phi_0)
g=9.81;
a = cosphi*g*(m1+m2)/(l*m2);
c = (1/(l*m2))*((m1+m2)/(m1*l) + cosphi* (1/r));
d = (1/m2)*(cosphi*(1/l) + (1/r));

e = 2*Kt*c/Ra;
f = 2*Kt*Ke*d/(r*Ra);



l_sys = tf([e 0 0],conv([1 f],[1 0 -a]));
t = (0:Ts:10)';
u = 10*Kv*ones(size(t));
figure
[y,t]=lsim(l_sys,u,t)

plot(t,y,'-',phidot.Time,phidot.Data,'--')
