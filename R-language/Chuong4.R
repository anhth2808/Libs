# CHUONG4
# C�c d?i lu?ng t?p trung d? li?u

# Trung b�nh c?ng
x<-c(10, 20, 40, 60)

mean(x)

sum(x)/length(x)



# X�c d?nh m�y n�o 
a<-edit(data.frame())

$ chuy?n d?i c?t frame -> vector
z<-as.vector(rep(1,5))

PC_faster<-function(A) {
	kt<-dim(A)
	vt<-as.vector(rep(1, kt[2]))
	
	for(i in 1:kt[1]) {
		d<-as.vector(A[i,])
		vt<-vt*d
	}
	
	xt<-exp(1/kt[1]*log(vt))
	
	for(i in 1:kt[2]) {
		if(xt[i] == min(xt))
		print(i)
	}

}