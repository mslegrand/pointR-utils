

extendedCubicPathDescriptor<-function(points){
  d<-list(M=points[,1], C=points[,2:4])
      if(ncol(points)>5){
        pp2<-points[,-(1:4)]
        l<-ncol(pp2)-(ncol(pp2)%%2)
        pp3<-matrix(pp2[,1:l],4)
        d<-c(d, list(S=pp3))
      }
  d  
}

arrowCubic %<c-% function(points){
  if(ncol(points)>3){
    d<-extendedCubicPathDescriptor(points)
    path(
      d=d, stroke='black', fill='none', 
       marker.end=
         marker(
          viewBox=c(0, 0, 10, 10), refXY=c(9,5), 
           markerWidth=6, markerHeight=6, orient="auto",
           path( d=c("M", 0, 0, "L", 10, 5, "L", 0, 10, "z"))
        )
    )
  } else {
    NULL
  }
}





