## Job de Pater & Gert Sterenborg
# 15-01-2016

# Function to make predictions of tree cover based on band 7

predictVCF <- function(inData = df, model ){
  
  originalVCF <- inData$VCF
  predictVCF  <- predict(model, df)
 
  rmse <- sqrt(mean((originalVCF-predictVCF)^2, na.rm=T))
  
  
  png(filename = 'figs/predictedMeasured.png')
  plot <-  smoothScatter(originalVCF, predictVCF, 
                         nrpoints=100, xlim=c(0,100), ylim=c(0,100), 
                         col=densCols((originalVCF)),
                         xlab="Original VCF", ylab="Predicted VCF")
  abline(1,1, col="red")
  dev.off()
  return(predictVCF)
}