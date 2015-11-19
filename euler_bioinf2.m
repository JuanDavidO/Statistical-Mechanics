function euler_bioinf2(dt,r0,p0)
%This one evolves RNA and proteins jointly
%gen constitutivo
k=1;  %steady=k/gamma
gamma=1/5;
gamma_p=1/30;
k_p=1000/30;
r(1)=r0;
p(1)=p0;
for i=1:1000
    r(i+1)=r(i)+(k-gamma*r(i))*dt;
    p(i+1)=p(i)+(k_p*r(i)-gamma_p*p(i))*dt;
end
tiempo=0:dt:1000*dt;
plot(tiempo,p)
hold on
plot(tiempo,r)
hold off
