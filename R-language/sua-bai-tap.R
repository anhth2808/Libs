n<-500
pmu<-45/n
alpha<-0.05
Zstar<-qnorm((1-alpha)/2,0,1)
er<-Zstar*sqrt(pmu*(1-pmu)/n)
pmu-er;pmu+er

#------------
er1<-0.015
pmu<-45/500
Zstar1<-er1/sqrt(pmu*(1-pmu)/n)
alpha1<-2*(1-pnorm(Zstar1,0,1))
conf1<-(1-alpha1)*100
conf1

#-----5.18 DHA
#-- fix: do chinh xac -> 30%

Xi1<-c(5,7,9,11,13,15,17,19)
Xi2<-c(7,9,11,13,15,17,19,21)
Xtb<-(Xi1+Xi2)/2
sp<-c(2,8,14,19,22,20,10,5)
Xbar<-sum(Xtb*sp)/sum(sp)

alpha<-1-0.95
Zstar<-qnorm(1-alpha/2,0,1)
s2<-sum((Xtb-Xbar)^2*sp)/(sum(sp)-1)

s<-sqrt(s2)
n<-sum(sp)
er<-Zstar*s/sqrt(n)
Xbar-er;Xbar+er

n<-(Zstar*s/0.3)^2
n-sum(sp)













