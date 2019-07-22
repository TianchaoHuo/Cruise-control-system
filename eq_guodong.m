% %% 
% P controller
function dxdt = eq_guodong(t,x)
M = 2020;
V0 = 100;
A = 2;
p = 1.2041;
Cd=0.3;
dxdt = zeros(1,1);
Kp = (2.2*M)/5+(A*p*Cd*V0)
dxdt = (A*p*Cd*V0 - Kp)/M* x + (Kp/M)*V0 - 0.5*(A*p*Cd*V0*V0)/M;

% [t,y]= ode45(@eq_guodong, [0,20],0); plot(t,y(:,1),'Color','red','LineWidth', 1.8)  
% hold on  
% V0 = 100;
% a= line([0 20],[V0+0.5 V0+0.5], 'LineStyle','--','LineWidth', 1.8);
% line([0 20],[V0-0.5 V0-0.5],'LineStyle','--','LineWidth', 1.8);
% hold off
% xlabel('Time (s)')
% ylabel('velocity (km/h)')
% title('P control performance')
% legend( 'Current Velocity','Error range')

%%
% % PI controller
% function dxdt = eq_guodong(t,x)
% KI = 600;
% KP = 1800;
% V0 = 3780;
% A = 2;
% p = 1.2041;
% Cd=0.3;
% dxdt(1) = x(2);
% dxdt(2) = -(KP/2298)*x(2) + (KI*V0)/2298 - (KI/2298+(A*p*Cd)/2298)*x(1) ;
% dxdt = dxdt';
% %
% hold on
% [t,y]= ode45(@eq_guodong, [0,20],[0 0]); plot(t,y(:,1),'Color','red','LineWidth', 1.8)
% [t,y]= ode45(@eq_guodong, [20,30],[100 0]); plot(t,y(:,1),'Color','red','LineWidth', 1.8)
% [t,y]= ode45(@eq_guodong, [30,50],[80 0]); plot(t,y(:,1),'Color','red','LineWidth', 1.8)
% [t,y]= ode45(@eq_guodong, [50,60],[60 0]); plot(t,y(:,1),'Color','red','LineWidth', 1.8)
% [t,y]= ode45(@eq_guodong, [60,80],[40 0]); plot(t,y(:,1),'Color','red','LineWidth', 1.8)
% a=line([0 0],[0 100],'LineStyle','--','LineWidth', 1.8);
% 
% xlabel('Time (second)')
% ylabel('Velocity (km/h)')
% title('PI control performance on changing velocity')
% legend( 'Current Velocity','Reference velocity')
%%
% M = 2020;
% kp = 1654;
%  sys = tf([(kp*50-900)], [M,kp-36]);
%  step(sys);
%
% PI controller
% KI = 600;
% KP = 1800;
% Ref = 100;
% mass = 70;
% A = 2;
% p = 1.2041;
% Cd=0.3;
% Distur = -3300;
% M = 2020 ;0
% sys = tf([KI*Ref], [(M), (KP), KI+(A*p*Cd)]);
% step(sys);
% title('PI control performance','FontSize', 13)
% xlabel('Time (second)','FontSize', 13)
% ylabel('Velocity (km/h)','FontSize', 13)
% legend( 'Current Velocity')



