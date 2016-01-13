
# Libraries ---------------------------------------------------------------

library(rgdal)
library(raster)
library(randomForest)


# Load data ---------------------------------------------------------------

dir.create('data',showWarnings = F)
load("data/GewataB1.rda")
load("data/GewataB5.rda")
load("data/GewataB7.rda")
load("data/vcfGewata.rda")

# Brick data --------------------------------------------------------------

vcfGewata[vcfGewata > 100] <- NA ##values above 100 is probably water
alldata <- brick(GewataB1, GewataB5, GewataB7, vcfGewata)
names(alldata) <- c("band1", "band5", "band7", "VCF" )

## extract all data to a data.frame
df <- as.data.frame(getValues(alldata))

