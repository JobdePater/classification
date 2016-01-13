
# Libraries ---------------------------------------------------------------

library(rgdal)
library(raster)
library(randomForest)


# Load data ---------------------------------------------------------------

dir.create('data',showWarnings = F)
load("data/GewataB1.rda")
load("data/GewataB5.rda")
load("data/GewataB7.rda")
