function euler_bioinf(dt,r0)
%This one only evolves RNA
k=2;  %steady=k/gamma
gamma=0.5;
r(1)=r0;
for i=1:1000
    r(i+1)=r(i)+(k-gamma*r(i))*dt;
end
tiempo=0:dt:1000*dt;
plot(tiempo,r)