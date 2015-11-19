clear
A(1)=50; %Initial size of population with fenotype/genotype A
B(1)=50;
N=A(1)+B(1);   %Total population, fixed for the whole run
fA=1;   %Absolute fitness of A
fB=1.2;
g=5000;  %number of generations to run
for i=1:g
    PA=A(i)*fA; %Prob to get a new A for next gen
    PB=B(i)*fB;
    PT=PA+PB;   %Total prob to normalize
    if rand<PA/PT
        A(i+1)=A(i)+1;
        B(i+1)=B(i);
    else
        A(i+1)=A(i);
        B(i+1)=B(i)+1;
    end
    PmA=A(i)/N; %deaths are equally probable
    PmB=B(i)/N;
    if rand<PmA
        A(i+1)=A(i+1)-1;
    else
        B(i+1)=B(i+1)-1;
    end
end
plot(1:g+1,A/N,1:g+1,B/N)