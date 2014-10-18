## RETURNS NULL FOR NOBS :-(

complete <- function(directory, id = 1:322) 
{
  setwd("~/R/R/specdata")
  for(i in id){
  filename <- sprintf("%03d", id)
  dataselect <- lapply(paste(directory,filename, ".csv",sep=""), read.csv, header=TRUE)
  complete <- na.omit(dataselect)
  nobs <- nrow(na.omit(dataselect))
  casematrix <- cbind(id, nobs)
  }


  return (casematrix)
} 
