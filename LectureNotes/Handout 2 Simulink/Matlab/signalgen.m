%
% Grid on which to define d^2r/dx^2
%
dx=.1;
x = 0:dx:10; % m
%
% Initialize d^2r/dx^2 as zero
%
ddr = zeros(size(x));
%
% Increasing slope between 1 m and 1.5 m
% To end at a slope of 1/3, magnitude of d^2r/dx^2 = (1/3)/0.5
%
index = find(x>=1 & x<1.5);
ddr(index) = ((1/3)/0.5)*ones(size(index));
%
% Decreasing slope between 7 m and 8 m
% want to end back a slope of 0
%
index = find(x>=7 & x<8);
ddr(index) = -((1/3)/1)*ones(size(index));
%
% Find dr/dx, phi, and r
%
dr = cumsum(ddr)*dx;
phi = atan(dr);
r = cumsum(dr)*dx;
%
% Plot the results
%
figure(1)
clf
set(gca,'fontsize',16) % make sure text is readable
subplot(3,1,1)
plot(x,ddr)
ylabel('$\frac{d^2 r}{dx^2}$','interpreter','latex')
subplot(3,1,2)
plot(x,dr)
ylabel('$\frac{d r}{dx}$','interpreter','latex')
subplot(3,1,3)
plot(x,r)
ylabel('$r$','interpreter','latex')
xlabel('$x$ (m)','interpreter','latex')

%
% Save the results in a .mat file
%
save road.mat x r dr ddr phi

