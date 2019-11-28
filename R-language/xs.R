# Co 3 hop A, B, C dung cac lo thuoc 
#hop A co 10 lo tot 5 lo hong
#hop B co 6 lo lot, 4 lo hon1g
#hop C co 5 lo tot, 7 lo hong
#lay ngau nhien 1 hop, 1 lo thuoc
#
a) tim phan phoi xac suat ung voi vo so lo thuoc
goi X la so lo thuoc tot lay duoc to viec chon moi hop 1 lo

A1: Lay duoc 1 lo thuoc tot, tu hop A
A2: Lay duoc 1 lo thuoc tot ru B


#  X                 xs
#1 0 0.0777777777777778
#2 1                 NA
#3 2                 NA
#4 3                 NA


def<-edit.data.frame()
bpp[1,2]=7/90
bpp[2,2]=59/180
bpp[3,2]=77/180
bpp[4,2]=1/6

#bt/61
ppxs<-edit(data.frame())
#   sl  ts    xs
#1   0  40 0.080
#2   1 100 0.200
#3   2 142 0.284
#4   3  66 0.132
#5   4  36 0.072
#6   5  30 0.060
#7   6  26 0.052
#8   7  20 0.040
#9   8  16 0.032
#10  9  14 0.028
#11 10   8 0.016
#12 11   2 0.004

ppxs$xs<-ppxs$ts/sum(ppxs$ts)

# ky vong
EX<-sum(ppxs$sl * ppxs$xs)

# xich ma
xm2<-sum((ppxs$sl-EX)^2 *ppxs$xs)

sd<-sqrt(xm2)

#Xac suat trong 1 ngay ban it hon 4
#P(X<4) = P(X=0) + P(X=1) + P(X=2) + P(X=3)
P3<-ppxs[1,3] + ppxs[2,3] + ppxs[3,3] + ppxs[4,3]

#Xac suat it nhat 4 xe duoc ban
#P(X>x) = 1- P(X<x)


#ung dung2
dl<-edit(data.frame())
#  Qmolon Qmovua Qmonho  xs
#1    200     90     40 0.3
#2     50    110     30 0.5
#3   -110    -30     20 0.2

Elon<-sum(dl$Qmolon*dl$xs)
 Evua<-sum(dl$Qmovua*dl$xs)
 Enho<-sum(dl$Qmonho*dl$xs)

