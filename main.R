## Job de Pater & Gert Sterenborg
# 13-01-2016
#

source("R/loadData.R") ##will imideately load data
source("R/createFigs.R")
source("R/r2LinMod.R")


# Create figures ----------------------------------------------------------

createFigs(alldata,5000)


# Calculate R2 ------------------------------------------------------------


r2LinMod(df, "VCF", "band1")
