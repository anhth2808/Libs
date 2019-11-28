# day la vi du ve script

#BaiTap1
a<-rep(c(2, 5, 7), c(3, 2, 4))

#BaiTap2
mt1<-matrix(c(3,7,9,4,2,5), 2, 3, byrow="T")
mt2<-matrix(c(6, 3, 8), 3, 1, byrow="T")
mt3<-mt1%*%mt2
mt3

#BaiTap3
nghichdao<-solve(matrix(c(4,5,7,4,9,3,2,1,6), 3, 3, byrow="T"))
nghichdao

#BaiTap4
dinhthuc<-det(matrix(c(5,4,2,6,7,8,1,1,9), 3, 3, byrow="T"))
dinhthuc

#BaiTap5
// 1
mt1<-matrix(c(2, 3, 1, 2), 2, 2, byrow="T")
mt2<-matrix(c(8, 5), 2, 1, byrow="T")
ngDaoMt1<-solve(mt1)cl
A<-ngDaoMt1%*%mt2

mt1<-matrix(c(7, 7, 3, -1), 2, 2, byrow="T")
mt2<-matrix(c(41, 5), 2, 1, byrow="T")
ngDaoMt1<-solve(mt1)
A<-ngDaoMt1%*%mt2
