%% Motor Parameters
%
stall_torque = 170; % oz-in
stall_current = 5; % A
Max_voltage = 12; % V
Max_RPM = 200; % rpm
Max_RPM_Current = .3; % A
%
% Motor Driver Parameters
%
Value_for_full_PWM = 255; % digital output for 100% PWM
%
% Encoder Paramaters
%
Counts_per_Revolution = 3200; % Encoder counts
%
% Gyro parameters
%
V_gyro_0 = 1.23 ; % Voltage for 0 rotation
S_gyro = 33.3 ; % mV/deg/s sensitivity
V_gyro_max = 3; % Max gyro output voltage 
V_gyro_min = 0; % Min gyro output voltage
%
% Physical Parameters
%
Wheel_radius = 3; % in
l = .38; % m
m1 = .6; % kg
m2 = 1.9; % kg
b_phi=0; % rotational friction
b_x=0; % translational friction
La=0; % Motor inductance
Ts = .001; % Sample time of controller
% initial condition
phi_0 = pi; % initial condition for angle of pendulum

%%
% Conversions
%
r=Wheel_radius/39.37; % convert in to m
tau_max=stall_torque/141.612; % convert oz-in to Nm 
K_gyro = (S_gyro / 1000) * (180 / pi); % convert mV/deg/s to V/rad/s
%
% Motor Constants
%
Kt = tau_max/stall_current;    % divide by stall current to get motor constant
Ra = Max_voltage/stall_current; % motor resistance
Ke = (Max_voltage - Ra*Max_RPM_Current)/(Max_RPM*2*pi/60); % back emf constant
%
Kv = Max_voltage/Value_for_full_PWM; % digial output to V conversion for motor
Ktheta = 2*pi/Counts_per_Revolution;
