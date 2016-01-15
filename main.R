## Job de Pater & Gert Sterenborg
# 13-01-2016
#

source("R/loadData.R") ##will imideately load data
source("R/createFigs.R")
source("R/linMod.R")
source("R/predictVCF.R")
source("R/classRMSE.R")



# Create figures ----------------------------------------------------------

createFigs(alldata,5000)


# Calculate summary statistics of the simple linear models ----------------

# write output to 'out/linMod.rda' 
mods <- linMod(df) # band 7 has highest R2

# Predict VCF based on band 7 ---------------------------------------------

predictedVCF <- predictVCF(df, mods[[3]])

# RMSE 
classRMSE(predictedVCF, GewataB3, GewataB4,
          trainingPoly)
