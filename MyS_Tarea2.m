% ODE45: function - time of simulation(s) - initial conditions
% Initial conditions: theta1, theta2, theta1_d, theta2_d
theta1   = 0;
theta2   = (35*pi)/180;
theta1_d = 0;
theta2_d = 0;
time     = 10;

% return the vector x based on ODE45
[t,x] = ode45(@doblePendulum,[0 time], [theta1 theta2 theta1_d theta2_d]);

%----------------------- Plotting ----------------------
clf
figure(1)
subplot(2,1,1)
sgtitle("Angular Position"); 
plot(t,x(:,1)) % First state: theta1
grid on
xlabel("Time");ylabel("rad");legend('Theta1')

subplot(2,1,2)
plot(t,x(:,2),'r') % Second state: theta2
grid on
xlabel("Time");ylabel("rad");legend('Theta2')