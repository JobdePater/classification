classRMSE <- function(predictedVCF, GewataB3, GewataB4,
                      trainingPoly){
# Calculate NDVI
ndvi <- overlay(GewataB3, GewataB4, fun=function(x,y){(y-x)/(y+x)})

trainingPoly@data$Code <- as.numeric(trainingPoly@data$Class)
# create classes
classes <- rasterize(trainingPoly, ndvi, field='Code')

# RMSE for ech class
difference <- (vcfGewata-predictedVCF)^2
treeCovDiff <- zonal(difference, classes)
rmse.classes <- sqrt(treeCovDiff[,2]) 
names(rmse.classes) <- c("cropland", "forest", "wetland")
summary(treeCovDiff)
return(rmse.classes)

}