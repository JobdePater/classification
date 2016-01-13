
# Libraries ---------------------------------------------------------------

library(rgdal)
library(raster)
library(randomForest)


# Load data ---------------------------------------------------------------

dir.create('data',showWarnings = F)
load("data/GewataB1.rda")
load("data/GewataB5.rda")
load("data/GewataB7.rda")


# Brick data --------------------------------------------------------------


alldata <- brick(GewataB1, GewataB5, GewataB7)
names(alldata) <- c("band1", "band5", "band7")