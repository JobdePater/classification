## Job de Pater & Gert Sterenborg
# 13-01-2016

linMod <- function(inData){
  
  mod1 <- lm(VCF ~ band1,data=inData)
  mod5 <- lm(VCF ~ band5,data=inData)
  mod7 <- lm(VCF ~ band7,data=inData)
  mods <- list(mod1, mod5, mod7)
  printMod <- function(model){
    intercept <- round(summary(model)$coefficients[1])
    slope     <- round(summary(model)$coefficients[2], 2)
    R2        <- round(summary(model)$r.squared*100)
    return(rbind(intercept, slope, R2)) }
  
  out <- t(data.frame(band1 = printMod(mod1), 
                      band5 = printMod(mod5), 
                      band7 = printMod(mod7)
                      ))
  
  save(out, file = "out/linMod.rda")
  
  return (mods)
}


