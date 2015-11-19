clear
tic
k=1;
gamma=1/5;
r(1)=0;
tiempo(1)=0;
for i=1:1000
    T_cr=k;
    T_des=gamma*r(i);
    T_tot=T_cr+T_des;
    t=-1/T_tot*log(rand);
    tiempo(i+1)=tiempo(i)+t;
    if rand<(T_cr/T_tot)
        r(i+1)=r(i)+1;
    else
        r(i+1)=r(i)-1;
    end
end
plot(tiempo,r)
toc