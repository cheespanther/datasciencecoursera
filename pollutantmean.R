pollutantmean <- function(directory, pollutant, id, summarize = FALSE) 
{
  ## ESTABLISHES DIRECTORY WHERE FILES ARE FOUND
  setwd("~/R/R/specdata")
  
  ## CREATES FILENAMES WITH LEADING ZEROS IN FILE NAMES ACCORDING TO "id" USER INPUT
  filename <- sprintf("%03d", id)
  
  ## READS SELECTED FILES ACCORDING TO "id" USER INPUT
  dataselect <- lapply(paste(directory,filename, ".csv",sep=""), read.csv, header=TRUE)
  
  ## COMBINES DATA FROM "dataselect" INTO ONE DATA FRAME
  combined <- do.call(rbind, dataselect)
  
  ## REMOVES "NA" FROM SELECTED .CSV FILES
  datafilter <- na.omit(combined[[pollutant]]) 
  
  ## CALCULATES MEAN OF COMBINED DATA .CSV FILES WITHOUT "NA"
  combinedmean <- mean(datafilter)
  
  return (combinedmean)
}
