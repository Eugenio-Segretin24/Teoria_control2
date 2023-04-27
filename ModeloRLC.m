%modelo RLC
function [X]= ModeloRLC(t_e, xant, accion)
  R= 4.7e3; L=10e-6; C=100e-9;
  A= [-R/L -1/L; 1/C 0];
  B=[1/L;0];
  h=t_e/10;
  x=xant;
  u=accion;
  for i=1:10*t_e/h
      xp= A*x + B*u;
      x = x + h*xp;
  end
  X=x;