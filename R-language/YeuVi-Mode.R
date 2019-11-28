x<-c(1,2,3,4,5,1,1)

demts<-function(x, y) {
	so<-0
	for(i in 1:length(x)) 
		if (x[i] == y) 
			so<-so+1
	
	return (so)
}


#yeu vi
mode <- function(x) {
	kq<-unique(x)
	tam<-as.vector(rep(0,length(kq)))
	for (i in 1:length(kq))
		tam[i]<-demts(x, kq[i])
	if (min(tam) != max(tam)) {
		for( i in 1:length(kq))
			if( tam[i] == max(tam))
				print(kq[i])		

	}
}

#trung tam
mean(range(x))



#he so bien thien

cv <- function(x) {
	sd<-sd(x)
	xn<-mean(x)
	CoV<-sd/xn*100
	c(CV=CoV)
}




x<-c(10,20,25,27,28,30,35,42,40,50,67,68,69,70,72, 700)

#NgoaiLeChuan
#bai tap

nlc<-function(x) {
	mu<-mean(x);
	sd<-sd(x);
	
	L<-mu-3*sd
	U<-mu+3*sd

	x[x<L|x>U]
}


	
	
}



