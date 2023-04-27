%circuito RLC 1
clear all;
X = [0;0]; i=0; t_e=1e-4; tf=0.1;
t=0:t_e:tf;
u=12*square(2*pi*10*t);
for n=0:t_e:tf
    i = i+1;
    X = ModeloRLC(t_e, X, u(i));
    x1(i)= X(1); % I Inductor
    x2(i)=X(2); % V Capacitor
    acc(i)=u(i);
end
subplot(3,1,1); hold on;
plot(t,x1,'r');title('Corriente Inductor');grid;
subplot(3,1,2); hold on;
plot(t,x2,'r');title('Tension Capacitor');grid;
xlabel('Tiempo');
subplot(3,1,3); hold on;
plot(t,acc,'r'); 
title('Tension Entrada');grid;
