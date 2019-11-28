#Ph?n t? ngo?i l? là pt có giá tr? khác v?i các pt còn l?i

x<-c(2, 3, 80, 85, 82, 79, 88, 90, 500, 650, 700)
#a) Dùng phuong pháp trung v?
#Tinh trung v? c?a x
m<-median(x)
# Ð? l?ch các thành ph?n so v?i trung v?
d<-abs(x-m)

# Tinh trung v? c?a d
md<-median(d)

# Tính t? s?
t<-d/md

# Ph?n t? ngo?i l?
x[t>= 4.5]


##############################
# Vi?t hàm tìm ph?n t? ngo?i l?
nl<-function(x){
	m<-median(x)
	d<-abs(x-m)
	md<-median(d)
	t<-d/md
	x[t>=4.5]
}


############################
# Tr? v? vector thành ph?n c?a t? phân v?
KQ<-summry(x)

Q1<-KQ[2]

Q3<-KQ[5]

# Ð? th? hàm boxplot cho phép hi?n th? tr?c quan ph?n t? ngo?i l?
# Ph?n t? ngo?i l? là d?u ch?m tròn
boxplot(x)
################################
# Vi?t hàm ngo?i l? t? phân v?
nltpv<-function(x) {
	KQ<-summary(x)
	Q1<-KQ[2]
	Q3<-KQ[5]
	IQR<-Q3-Q1
	L <- Q1 - 1.5*IQR
	U <- Q3 + 1.5*IQR
	x[x<L|x>U]
}