g = 9.81;
a = g*(m1+m2)/(l*m2);
b = (1/(l*m2))*((m1+m2)/(m1*l) + 1/r);
c = g*m1/m2;
d = (1/m2)*(1/l + 1/r);
e = 2*Kt*b/Ra;
f = 2*Kt*Ke*d/(r*Ra);

sys = tf([e 0 0],conv([1 0 -a],[1 f]))
sys2 = tf([b 0],[1 0 -a])