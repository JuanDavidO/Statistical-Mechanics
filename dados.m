%ejercicio de los dos dados, cr-creacion, des-destruccion
tic
t=10^6
dt=0.00001;
k=1;
gamma=1/5;
r(1)=0;
for i=1:t
    P_cr=k*dt;
    P_des=gamma*dt*r(i);
    if rand<P_cr
        r_t=r(i)+1;
    else
        r_t=r(i);
    end
    if rand<P_des
        r(i+1)=r_t-1;
    else
        r(i+1)=r_t;
    end
end
plot(1:(t+1),r)
toc