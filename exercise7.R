#1 puts even rows into a dataframe called 'oddrows'
#useage:getoddrows(dataframe)
irisdata<-read.csv("iris.csv")
getoddrows<-function(x){
  rows<-nrow(x)
  columns<-ncol(x)
  oddrows<-x[1:(rows/2),]
  for (i in 2:rows){
    if (i%%2!=0){
      oddrows[((i+1)/2),]<-x[i,]
    }
  }
  
}


#2 Part 1, returns number of observations of an inputted species
#usage:speciescount(speciesName)
speciescount <- function(species){
  observations<-subset(irisdata,irisdata$Species==species)
  assign<-nrows(observations)
  print(assign)
  
}



#2 Part 2, makes a dataframe called 'set' that contains the flowers with sepal width greated than the specified value
#usage:Size(sepalWidthTarget)
Size<-function(value){
  set<<-subset(irisdata,irisdata$Sepal.Width>value)
  
}
#2 part 3, makes a csv file called the species name containing only observations from that species
#usage:filespecies(SpeciesName)
filespecies<- function(species){
  speciesgroup<-subset(irisdata,irisdata$Species==species)
  write.csv(speciesgroup,file=paste(species))
  
}

