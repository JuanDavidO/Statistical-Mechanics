for i=1:10
    c(i)=i^2;
end
x=0:0.01:3;
y=x.^2;
plot(x,x,x,y)
hold on
plot(x,x.^3)
hold off
