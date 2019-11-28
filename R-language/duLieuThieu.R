############################################
#tao df 4x4
dl<-edit(data.frame())

#
#   A  B  C
#1 10 65 77
#2 20 NA 56
#3 32 45 23
#4 78 43 50

#chuyen phat tu co gia tri 50 cua cot C thanh NA
dl$C[dl$C==50]<-NA

#chuyen NA
dl$C[is.na(dl$C)]<-90

#XoaDulieu
#Tao df moi
#Dong nao co NA thi xoa di
dlm<-na.omit(dl)

#Dien` dl thieu bang gia tri trung binh
dl$B[is.na(dl$B)]<-mean(dl$B,na.rm=T)