vd 59:
# X-P(lamda): lamda= 25/10 // so nguoi truy xuat trong 6 phut
lamda<-25/10
# Xac suat khong co nguoi truy cap trong 6 phut
dpois(0,lamda)
# T: la khoang thoi gian giu 2 nguoi dang nhap; Texp(lda)
lda = 25/60
# P(2 <= T <= 3) = P(X<=3) - P(X<=2)
pexp(3, lda) - pexp(2, lda)

VD7(note):
# T: Thoi gian giua 2 khach hang den giao dich
# T-exp(lamda)
lamda<-15/60
# P(T<=3)
pexp(3, lamda)

#HAM MAT DO XAC SUAT
x<-seq(0,5,0.1)
ld1<-0.5
y1<-dexp(x, ld1)
ld2<-1
y2<-dexp(x, ld2)
ld3<-1.5
y3<-dexp(x, ld3)
plot(x, y1,type="l", lty=1, col="red")
lines(x,y2,type="l", lty=2, col="blue")
lines(x,y3,type="l", lty=2, col="green")

mau<-c("red", "blue", "green")
nhan<-c("lamda=0.5", "lamda=1.0", "lamda=1.5")
legend("topright",nhan, lty=c(1, 2, 3), col=mau)















