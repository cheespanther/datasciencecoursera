complete <- function(directory, id = 1:322) 
{
  setwd("~/R/R/specdata")
  for(i in id){
  filename <- sprintf("%03d", id)
  dataselect <- lapply(paste(directory,filename, ".csv",sep=""), read.csv, header=TRUE)
  cleandata <- lapply (dataselect, na.omit, header=TRUE)
  nobs <- lapply (cleandata, nrow)
  casematrix <- cbind(id, nobs)
  }

  return (casematrix)
} 
