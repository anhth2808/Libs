# VD(note)
# xm = 500; n = 10; xbar=8900; 100*(1-alpha)%=95%
xm<-500
n<-15
xbar<-8900
alpha<-1-0.95
Zstar<-qnorm(1-alpha/2,0,1)
er<-Zstar*xm/sqrt(n)
UL1<-xbar-er
UL2<-xbar+er
kq<-c(UL1, UL2)
# UOC LUONG function
ul<-function(Xm, n, xbar, conf) {
	alpha<-1-conf/100
	Zstar<-qnorm(1-alpha/2, 0, 1)
	er<-Zstar*xm/sqrt(n)
	UL1<-xbar-er
	U bar+er
	kq<-c(UL1, UL2)
	kq
}
ul(500, 15, 8900, 95)
#
#
# Khong biet phuong sai
# VD
x<-c(3, 4, 5, 6, 7, 8);
sl<-c(2, 8, 23, 32, 23, 12);
z<-x*sl;
totalX<-sum(z)
totalSL<-sum(sl)

xm<-totalSL
xbar<-totalX/totalSL
alpha<-1-90
#--------GIAI--------
Xi<-c(3, 4, 5, 6, 7, 8)
sl<-c(2, 8, 23, 32, 23, 12);
Xbar<-sum(Xi*sl)/sum(sl)

n<-sum(sl)
S2<-sum((Xi-Xbar)^2)/(n-1)
S<-sqrt(S2)
alpha<-1-0.9
Zstar<-qnorm(1-alpha/2,0,1)
er<-Zstar*S/sqrt(n)
UL1<-Xbar-er
UL2<-Xbar+er
# function

ul<-function(Xi, sl, confi) {
	Xbar<-sum(Xi*sl)/sum(sl)
	n<-sum(sl)
	S2<-sum((Xi-Xbar)^2)/(n-1)
	S<-sqrt(S2)
	alpha<-1-confi/100
	Zstar<-qnorm(1-alpha/2,0,1)
	er<-Zstar*S/sqrt(n)
	UL1<-Xbar-er
	UL2<-Xbar+er
	kq<-c(UL1, UL2)
	kq
}



Xi<-c(175, 176,173,175,174,173,173,176,173,179)
n<-length(Xi)
S=1.5
Xbar<-sum(Xi)/n
alpha<-1-0.95
tstar<-qt(1-alpha/2, n-1)
er<-tstar*S/sqrt(n)
U1<-Xbar-er
U2<-Xbar+er
U1;U2

# 
#
#
#baitap1(note): but bi
#cau a
alpha<-1-0.95
p<-45/500
zstar<-qnorm(1-alpha/2)
n<-500

vr<-sqrt(p*(1-p)/n)
LC<-p-zstar*vr
UC<-p+zstar*vr
LC;UC
#cau b: so but hong cua lo hang min max
10000 * LC
10000 * UC

#Baitap2(note): thuoc

aps<-0.01
alpha<-1-0.95
zstar<-qnorm(1-alpha/2,0,1)
sv<-(zstar/2/aps)^2

#baitap3(note):
n<-100
Xi<-c(10, 24, 42, 16, 8)
sl<-c(9, 10, 12, 14, 15)
Xbar<-sum(Xi*sl)/n
alpha<-1-0.97
Estar<-qnorm(1-alpha/2, 0, 1)
S2<-sum((sl-Xbar)^2)/(n-1)
S<-sqrt(S2)
er<-Zstar*S/sqrt(n)

u1<-Xbar-er
u2<-Xbar+er




