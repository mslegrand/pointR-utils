#quadratic path descriptor
points<-matrix(runif(22, 1,200),2)

extendedQuadraticPathDescriptor<-function(points){
  d<-list(M=points[,1], Q=points[,2:3])
  if(ncol(points)>4){
    pp2<-points[,-(1:3)]
    d<-c(d, list(T=pp2))
  }
  d  
}

d<-extendedQuadraticPathDescriptor(points)