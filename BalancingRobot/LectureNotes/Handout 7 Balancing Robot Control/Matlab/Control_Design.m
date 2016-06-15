Setup_Parameters
phi_0 = 0;
g=9.81;
a = g*(m1+m2)/(l*m2);
c = (1/(l*m2))*((m1+m2)/(m1*l) +  (1/r));
b = m1/(l*m2);
d = (1/m2)*((1/l) + (1/r));

e = 2*Kt*c/Ra;
f = 2*Kt*Ke*d/(r*Ra);


l_sys = tf([e 0 0],conv([1 f],[1 0 -a]));

figure(1)
rlocus(l_sys)

alpha=sqrt(a);
beta=1;
gamma=.1;
delta=sqrt(a)-.1;

figure(2)
ctrl = tf(conv([1 alpha],[1 beta]),conv([1 gamma],[1 -delta]))
rlocus(ctrl*l_sys)

K=100;
figure(3)
step(feedback(K*ctrl*l_sys,1))

