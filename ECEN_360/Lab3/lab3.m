clear
lambda=1
alpha=0
beta=2*pi/lambda
gamma=alpha+j*beta
omega=1
ref=1
for T=0:20
t=6.28*T/100
z=linspace(-2,0,1000);
Vo=1
Vfor=real(Vo*(exp(-gamma*z)*exp(j*omega*t)));
Vrev=real(Vo*ref*exp(gamma*z)*exp(j*omega*t));
Vtot=real(Vo*(exp(-gamma*z)+ref*exp(gamma*z))*exp(j*omega*t));
Vswr=(Vo*(exp(-gamma*z)+ref*exp(gamma*z)).*conj(Vo*(exp(-gamma*z)+ref*exp(gamma*z)))).^.5;
Iz=(Vo*(exp(-gamma*z)-ref*exp(gamma*z))/50.*conj(Vo*(exp(-gamma*z)-ref*exp(gamma*z))/50)).^.5;
Zin = Vswr/Iz;

figure(1);
Vp=plot(z,Vfor,z,Vrev,z,Vtot,z,Vswr);
axis([-2 0 -2 2])
figure(2);
plot(z,Zin);
axis([-2 0 0 50])
drawnow
pause(.1)
end
