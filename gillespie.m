clear
tic
k=1;
gamma=1/5;
r(1)=0;
tiempo(1)=0;
for i=1:1000
    t=-1/k*log(rand);
    tiempo(i+1)=tiempo(i)+t;
    r(i+1)=r(i)+1;
end
plot(tiempo,r)
toc
