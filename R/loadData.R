## Job de Pater & Gert Sterenborg
# 13-01-2016

# Libraries ---------------------------------------------------------------

library(rgdal)
library(raster)
library(randomForest)


# Load data ---------------------------------------------------------------

dir.create('data',showWarnings = F)
load("data/GewataB1.rda")
load("data/GewataB2.rda")
load("data/GewataB3.rda")
load("data/GewataB4.rda")
load("data/GewataB5.rda")
load("data/GewataB7.rda")
load("data/trainingPoly.rda")
load("data/vcfGewata.rda")

# Brick data --------------------------------------------------------------

GewataB1[GewataB1 > 1000] <- NA #get rid of extreme values
GewataB2[GewataB2 > 1500] <- NA #get rid of extreme values
GewataB3[GewataB3 > 1500] <- NA #get rid of extreme values
GewataB4[GewataB4 > 4500] <- NA #get rid of extreme values

GewataB5[GewataB5 > 4000] <- NA
GewataB7[GewataB7 > 4000] <- NA
vcfGewata[vcfGewata > 100] <- NA ##values above 100 is probably water
alldata <- brick(GewataB1, GewataB5, GewataB7, vcfGewata)
names(alldata) <- c("band1", "band5", "band7", "VCF" )

## extract all data to a data.frame
df <- as.data.frame(getValues(alldata))

