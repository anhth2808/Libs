#dsfd
#x<-c(1,2,3,4...)
hist(x, main="Do thi tan suat", xlab="Do tuoi", ylab="Tan suat",
breaks=5, border="black", col=c("red", "green", "yellow", "white", "purple"))

#color
rainbow()

#RColorBrewer
library(RColorBrewer)
display.brewer.all
brewer.pal(n=5, name="Accent")

#Bieu do thanh (bar chart)
#vd6 a:
Thang<-c("Th3", "Th4", "Th5", "Th6", "Th7")
Thu<-c(20, 15, 17, 30, 35)

barplot(Thu, xlab="Thang", ylab="Thu nhap", main="Tinh hinh kinh doanh",
col=heat.colors(length(Thu)), names.arg=Thang)

#vd6 b:

m<-matrix(c(178,210,563,492,370,198,150,
250,678,370,420,510,160,240,398,541,480,
368,170,265,473,520,410,472), nrow=4, ncol=6, byrow=T)

Thang<-c("Th2","Th3", "Th4", "Th7", "Th8", "Th9")
cty<-c("XYZ", "ABC", "MNL", "OPQ")
	#them chi thich
legend("topleft", cty, fill=rainbow(length(Thang)))
	#Ve tung khoi
barplot(m, main="Doanh thu cac cong ty", xlab="Thang", ylab="Doanh thu",
names.arg=Thang, col=rainbow(length(Thang)), beside=T)

#
ten<-c("A","B", "C", "D", "E")
sp<-c(7, 22, 11, 37, 3)
dl<-data.frame(ten, sp)
pareto.chart(sp)

#do thi dang tron

sv<-c(700, 1200, 650, 400)
Khoa<-c("CNTT", "Kinh te", "Che bien", "Nuoi")
pt<-round(100*sv/sum(sv), 1)
pie(sv, labels=pt, main="Phan bo sinh vien",col=heat.colors(length(Khoa)))
legend("bottomleft", Khoa, fill=heat.colors(length(Khoa)))
	#them ki tu
paste
	#3d	
pie3D(sv, labels=pt, main="Phan bo sinh vien",col=heat.colors(length(Khoa)), explode=0.2)

#do thi tu phan vi
boxplot(x, main="Do thi tu phan vi", ylab="Do tuoi")
boxplot(x, main="Do thi tu phan vi", ylab="Do tuoi", horizontal=T)

#ve duong
 a<-c(23, 45,21,87, 9, 26,57, 1, 48)

plot(a, type="p", col="red")
	#duong lien net
plot(a, type="o", col="red", lty=1)
	#bo di cac diem
plot(a, type="l", col="red", lty=1)

#ve nhieu duong
a<-c(23, 45,21,87, 9, 26,57, 1, 48)
b<-c(30,40,50,60,70,80)
c<-c(10,40,20,15,16,47,32,78)

plot(a, type="l", col="red", lty=6)
lines(b, type="b", col="blue", lty=2)
lines(c, type="h", col="blue", lty=2)

# bieu do diem
a<-c(23, 45,21,87, 9, 26,57, 1, 48)
dot"chart(a)
ten<-c("sv1","sv2", "sv3", "sv4", "sv5", "sv6", "sv7", "sv8", "sv9")
dotchart(a, labels=ten)
	#doi hinh cua diem
dotchart(a, labels=ten, pch=11)

# bieu do tan xa
x<-c(1,2,3,4,5,6,7)
y<-c(10, 7, 15, 2, 3, 15, 17)

dl<-data.frame(x,y)
plot(x, y, pch=ifelse(x<=4, 17, 8), col=c("blue", "yellow"))

#bai tap



cars<-c(1, 3, 6, 4, 9)
trucks<-c(2, 5, 4, 5, 12)
suvs<-c(4,4,6,6,16)
dl<-data.frame(cars, trucks, suvs)
plot(dl$cars, type="o", col="blue", lty=1)
lines(dl$trucks, type="o", col="black", lty=6)
lines(dl$suvs, type="o", col="yellow", lty=6)
title(xlab="Days", col.lab="green")
title(ylab="Total", col.lab="pink")

	#y=x^2
x<-seq(-4, 4, 0.1)
y = x^2
plot(x, y, type="l", lty=1, col="blue")
z<-seq(0, 16, 0.1)
h<-rep(0, length(z))
lines(h, z, type="l", lty=5, col="red")
t<-rep(0, length(x))
lines(x, t, type="l", lty=5, col="red")


#giai bai autos
#dothi 1
max_y<-max(autos_data)
plot_colors<-c("blue", "red", "forestgreen")

	#ve 1 duong, khong chu thich
plot(autos_data$cars, type="o", col=plot_colors[1], 
+ylim=c(0, max_y), axes=FALSE, ann=FALSE)

lines(autos_data$trucks,type="o", col=plot_colors[2], pch=22, lty=2)

lines(autos_data$suvs,type="o", col=plot_colors[3], pch=23, lty=3)

	#tao cac nhan~ truc x
axis(1, at=1:5, xlab=c("2","3","4", "6", "7"))
	#tao truc va nhan y
axis(2, las=1, at=4*0:max_y)
	#khung
box()
	#tieu de hai truc
title(xlab="Days", col.lab="black")
title(ylab="Total", col.lab="black")
	#chu thich
legend(1, max_y, names(autos_data), cex=0.8, 
+col=plot_colors, pch=21:23, lty=1:3)
	#tieu de chinh
title(main="Autos", col.main="red", font.main=4)

#dothi 2
thang<-c("2","3","4", "6", "7")

barplot(as.matrix(autos_data), ylab="total", main="Autos",
+col=heat.colors(length(thang)), beside=T)

legend("topleft", thang, cex=0.6,
+bty="n", fill=heat.colors(length(thang)))

#bai tap
	
a<-c(21, 62, 10, 53)

cty<-c("Hue","sai gon", "Ha Noi", "Da Nang")
pt<-round(100*a/sum(a), 1)
pie(a, labels=c(paste(pt, "%", sep="")), main="Vi du",
+ col=rainbow(length(a)))
