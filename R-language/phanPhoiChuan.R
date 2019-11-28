# DO THI HAM MAT DO XAC SUAT
x<-seq(-2, 10, 0.1)
y1<-dnorm(x, 4, 1)
y2<-dnorm(x, 4, 2)
y3<-dnorm(x, 4, 3)
plot(x, y1, type="l", lty=1, col="red")
lines(x, y2, type="l", lty=2, col="blue")
lines(x, y3, type="l", lty=3, col="green")

tieude<-expression(paste("N(", mu, ",", sigma^2,")  ", mu, "=4"))
title(main=tieude)

mau<-c("red", "blue", "green")
nhan<-c(expression(paste(sigma=""))
, "lamda=1.0", "lamda=1.5")
legend("topright",nhan, lty=c(1, 2, 3), col=mau)