## Job de Pater & Gert Sterenborg
# 13-01-2016

r2LinMod <- function(inData){
  model1 <- lm(VCF ~ band1,data=inData)
  model5 <- lm(VCF ~ band5,data=inData)
  model7 <- lm(VCF ~ band7,data=inData)
  
  out <- data.frame(model1 = round((summary(model1)$r.squared)*100),
                    model5 = round((summary(model5)$r.squared)*100),
                    model7 = round((summary(model7)$r.squared)*100)
                    # ,names(c('band1','band5','band7'))
                    )
  
  return (out)
}
