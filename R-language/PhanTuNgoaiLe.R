#Ph?n t? ngo?i l? l� pt c� gi� tr? kh�c v?i c�c pt c�n l?i

x<-c(2, 3, 80, 85, 82, 79, 88, 90, 500, 650, 700)
#a) D�ng phuong ph�p trung v?
#Tinh trung v? c?a x
m<-median(x)
# �? l?ch c�c th�nh ph?n so v?i trung v?
d<-abs(x-m)

# Tinh trung v? c?a d
md<-median(d)

# T�nh t? s?
t<-d/md

# Ph?n t? ngo?i l?
x[t>= 4.5]


##############################
# Vi?t h�m t�m ph?n t? ngo?i l?
nl<-function(x){
	m<-median(x)
	d<-abs(x-m)
	md<-median(d)
	t<-d/md
	x[t>=4.5]
}


############################
# Tr? v? vector th�nh ph?n c?a t? ph�n v?
KQ<-summry(x)

Q1<-KQ[2]

Q3<-KQ[5]

# �? th? h�m boxplot cho ph�p hi?n th? tr?c quan ph?n t? ngo?i l?
# Ph?n t? ngo?i l? l� d?u ch?m tr�n
boxplot(x)
################################
# Vi?t h�m ngo?i l? t? ph�n v?
nltpv<-function(x) {
	KQ<-summary(x)
	Q1<-KQ[2]
	Q3<-KQ[5]
	IQR<-Q3-Q1
	L <- Q1 - 1.5*IQR
	U <- Q3 + 1.5*IQR
	x[x<L|x>U]
}