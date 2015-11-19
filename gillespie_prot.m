clear
tic
k=1;
kp=40;
gamma=1/5;
gamma_p=1/30;
r(1)=0;
p(1)=0;
tiempo(1)=0;
for i=1:10^7
    T_cr=k;
    T_des=gamma*r(i);
    T3=kp*r(i);
    T4=gamma_p*p(i);
    T_tot=T_cr+T_des+T3+T4;
    t=-1/T_tot*log(rand);
    tiempo(i+1)=tiempo(i)+t;
    x=rand;
    if x<(T_cr/T_tot)
        r(i+1)=r(i)+1;
        p(i+1)=p(i);
    elseif x<(T_cr+T_des)/T_tot
        r(i+1)=r(i)-1;
        p(i+1)=p(i);
    elseif x<(T_cr+T_des+T3)/T_tot
        r(i+1)=r(i);
        p(i+1)=p(i)+1;
    else
        r(i+1)=r(i);
        p(i+1)=p(i)-1;
    end
end
plot(tiempo,p)
toc