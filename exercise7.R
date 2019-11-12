#part1

getoddrows<-function(x){
  rows<-nrow(x)
  columns<-ncol(x)
  oddrows<-x[1:(rows/2),]
  for (i in 2:rows){
    if (i%%2!=0){
      oddrows[((i+1)/2),]<-x[i,]
    }
    }
  return(oddrows)
}
