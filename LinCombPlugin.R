library(AppliedPredictiveModeling)
library(caret)

input <- function(inputfile) {
   myData <<- read.csv(inputfile)
}

run <- function() {}

output <- function(outputfile) {

	comboInfo <- findLinearCombos(myData)
	write.csv(myData[, -comboInfo$remove], outputfile)

}
