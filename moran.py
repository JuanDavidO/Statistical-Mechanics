from numpy import *
t=[]
for j in range(100):
    poblaciones=zeros((10,2))  #10 poblaciones con 2 estados posibles
    N=6
    poblaciones[:,0],poblaciones[:,1]=N-1,1
    F_t=poblaciones[:,0]+(4./6.)*poblaciones[:,1]
    generaciones=0
    x,y,z=[],[],[]
    while(size(where(poblaciones[:,1]>0))>5):
        F_t=poblaciones[:,0]+(4./6.)*poblaciones[:,1]
        #Nacimiento
        nace=[]
        for i in range(size(F_t)):
            if(F_t[i]*random.random()<poblaciones[i,0]):
                nace.append(0)
            else:
                nace.append(1)
        #Muere
        muere=[]
        for i in range(size(F_t)):
            if(N*random.random()<poblaciones[i,0]):
                muere.append(0)
            else:
                muere.append(1)
        #Actualice
        for i in range(size(F_t)):
            poblaciones[i,nace[i]]=poblaciones[i,nace[i]]+1
            poblaciones[i,muere[i]]=poblaciones[i,muere[i]]-1
        #print generaciones
        #print poblaciones
        generaciones=generaciones+1  
    t.append(generaciones)
print t
