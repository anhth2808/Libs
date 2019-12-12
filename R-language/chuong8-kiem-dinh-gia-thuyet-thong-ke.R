#VD/109 sgk
power.t.test(delta=1, sd=4.6,sig.level=0.05,power=0.8, type='one.sample')

#Tinh tay
n<-7.85/(1/4.6)^2


vd83/111
mu0<-6
Xbar<-6.1
xm<-0.2
n<-30
Z0<-(Xbar-mu0)/(xm/sqrt(n))
alpha<-0.03
Zstar<-qnorm(1-alpha/2,0,1)
abs(Z0);Xstar

p<-2*(1-pnorm(abs(Z0), 0, 1))
p;alpha

#VD84/112
#Gia Thuyet: H0: mu<=mu0=12; H1: mu>mu0
mu0<-12
alpha<-0.05
Xbar<-13.25
xm<-3.2
n<-40
Z0<-(Xbar-mu0)/xm*sqrt(n)
Zstar<-qnorm(1-alpha,0,1)
Z0;Zstar

#BT 6.1/DHP

mu0<-72
alpha<-0.01
Xbar<-74
xm<-9
n<-64
Z0<-(Xbar-mu0)/xm*sqrt(n)
Zstar<-qnorm(1-alpha,0,1)
Z0;Zstar

#BT 6.2/DHP
#Khong biet phuong sai va ...
#do lech chuan cua mau chu khong phai cua tong the
#H0: mu<156
#H1: mu>156
mu0<-156
alpha<-0.05
Xbar<-172
s<-40
n<-25
T<-(Xbar-mu0)/s*sqrt(n)
#Dung bang 3
ta<-qt(1-alpha, n-1)
T;ta
#bac bo H0
#: Tinh bang p
p<-1-pt(T, n-1)
p;alpha


# toc do......
#H0: mu<-mu0=65; H1: mu>65
mu0<-65
alpha<-0.05
Xbar<-66.2
s<-4.2
n<-64
Z0<-(Xbar-mu0)/s*sqrt(n)
Zstar<-qnorm(1-alpha,0,1)
Z0;Zstar
#H0 bi bac bo







