## Job de Pater & Gert Sterenborg
# 13-01-2016

library(png)
library(grid)

dir.create('figs',showWarnings = F)

createFigs <- function(alldataBrick,maxpixels=1000){
  png(filename = 'figs/pairs.png')
  pairs <- pairs(alldataBrick,maxpixels=5000)
  dev.off()
}
