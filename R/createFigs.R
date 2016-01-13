library(png)
library(grid)

dir.create('figs',showWarnings = F)

createFigs <- function(alldataBrick,maxpixels=1000){
  pairs <- pairs(alldataBrick,maxpixels=5000)
}