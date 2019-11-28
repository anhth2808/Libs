# bang phan phoi xac suat
x<-c(0,1)
y<-c(0.2,0.8)
rbind(x,y)

plot(x,y, xlab="x", ylab="PMP")

# vd: hoc vien tot nghiep
# x - B(5,0.4)
# a) khong ai tot nghiep p(x=0)
dbinom(0,5,0.4)

# b) 1 nguoi tot nghiep
dbinom(1,5,0.4)

# c) it nhat 1 nguoi tot nghiep p(x>=1)
# p(x>=1) = p(x=1) + p(x=2) + .. + p(x=5)
# p(x>k) = 1 - p(x<k); p(x<=k) = p(x<k) + p(x=k) => p(x<k) = p(x<=k) - p(x=k)
# p(x>1) = 1- p(x<=1) = p(x=1)
1-(pbinom(1,5,0.4) - dbinom(1,5,0.4))

# vd2: me sinh con
# x - B(2, 0.51)
x<-c(0,1,2)
y<-dbinom(x,2,0.51)
rbind(x,y)

# vd3: hoa lan
# x - B(5, 0.8)
# a)
x<-c(0, 1, 2, 3, 4, 5)
y<-dbinom(x, 5, 0.8)
rbind(x,y)
# b)
# so cay lan no hoa 'chac chan' la gi tri cua bien ngau nhien co xs tuong 
# ung cao nhat
# x = 4
# so tien thu duoc = 4.8tr

# c)
# E(x) = np=10 => n = 10/p
10/0.8
# vay trong it nhat 13 cay lan

# d) bieu do cua ham gia tri xac suat
plot(x, y, type="h", col="red")
# ham tich luy xs
z<-pbinom(x, 5, 0.8)
plot(x, z, type="s")


#vd 4: tram buu dien

#tinh xac suat de co it nhat 1 tieng on xuat hien
# x: so tin hieu on xh trong 10^-5 s
# x ~ P(lamda); lamda = 10^4 * 10^-5 = 10^-1
# p(x>=1) = 1 - p(x<1) = 1 - p(x<=1) - p(x=1)
lamda<-10^-5 * 10^4
1- (ppois(1, lamda) - dpois(1, lamda))

#vd 5: xe oto
x = 3
lamda<-0.02*200
y = ppois(x, lamda)

x<-c(0:3)
lamda<-0.02*200
y<-dpois(x, lamda)
plot(x, y, type="o", lty=1, col="red")
legend("topleft", 'lamda 4', fill="red", title="Chu thich")
title(main="Do thi", col.main="red", font.main=4)

#vd 6:
lamda<-10
dpois(4, lamda)

#ve ham gia tri xac suat x ~ p(lamda); x=0:15, xet lamda(1, 4, 10)
x<-c(0:15)
y<-dpois(x, 1)
plot(x, y, type="o", lty=1, col="red")
z<-dpois(x, 4)
lines(x, z, type="o", lty=1, col="green")
t<-dpois(x, 10)
lines(x, t, type="o", lty=1, col="blue")





















