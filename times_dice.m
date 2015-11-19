%ejercicio de los dos dados, cr-creacion, des-destruccion
clear
tic
dt=0.00001;
n=10^8;
k=1;
gamma=1/5;
r(1)=0;
for i=1:n
    P_cr=k*dt;
    if rand<P_cr
        r(i+1)=r(i)+1;
    else
        r(i+1)=r(i);
    end
end
plot(1:(n+1),r)
toc