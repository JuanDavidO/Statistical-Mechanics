function euler_bioinf3(dt,r0,p0)
%This one evolves RNA and proteins jointly
%Es su propio represor, cambiamos k por alpha+beta/(1+((P(i)/k))^2)
%k=200000;  %no hay represion
%k=3000      %represion razonable
k=0.1;      %Mucha represion
time=1000;
alpha=0.03;
beta=2;
gamma=1/5;
gamma_p=1/30;
k_p=1000/30;
r(1)=r0;
p(1)=p0;
for i=1:time
    r(i+1)=r(i)+(alpha+beta/(1+(p(i)/k)^2)-gamma*r(i))*dt;
    p(i+1)=p(i)+(k_p*r(i)-gamma_p*p(i))*dt;
end
tiempo=0:dt:time*dt;
plot(tiempo,r)