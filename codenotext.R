library(baseballr)
library(dplyr)
library(ggplot2)
library(caTools) 
library(knitr) 
library(rmarkdown)
library(tidyverse)
library(readr)


library(readxl)

AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx", 
                                  sheet = "1943")
View(AAGPBLCountingStats) 

model43 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model43)

hist(residuals(model43), col = "steelblue") 


coefficients43 <- data.frame(model43[["coefficients"]])


OPS43 <- mean(Year43$OPS)

CoBB43 <- coefficients43[7,1]
CoSingle43 <- coefficients43[2,1]
CoDoubles43 <- coefficients43[3,1]
CoTriples43 <- coefficients43[4,1]
CoHR43 <- coefficients43[5,1]
CoSB43 <- coefficients43[6,1]

TotalSingles43 <- (sum(Year43$Singles))
TotalDoubles43 <- (sum(Year43$Doubles))
TotalTriples43 <- (sum(Year43$Triples))
TotalHR43 <- (sum(Year43$HR))
TotalBB43 <- (sum(Year43$BB))
TotalSB43 <- (sum(Year43$SB))
TotalAB43 <- (sum(Year43$AB))

leaguewOBA43 <- ((CoBB43*TotalBB43) + (CoSingle43*TotalSingles43) + (CoDoubles43*TotalDoubles43) + (CoTriples43*TotalTriples43) + (CoHR43*TotalHR43) + (CoSB43*TotalSB43)) / (TotalAB43 + TotalBB43)


wOBASCALE43 <- OPS43/leaguewOBA43

Scaledcoefficients43 <- data.frame((coefficients43$model43...coefficients...)*wOBASCALE43)

ScaledCoBB43 <- Scaledcoefficients43[7,1]
ScaledCoSingles43 <- Scaledcoefficients43[2,1]
ScaledCoDoubles43 <- Scaledcoefficients43[3,1]
ScaledCoTriples43 <- Scaledcoefficients43[4,1]
ScaledCoHR43 <- Scaledcoefficients43[5,1]
ScaledCoSB43 <- Scaledcoefficients43[6,1]

NewCoefficients43 <- data.frame(ScaledCoBB43, ScaledCoSingles43, ScaledCoDoubles43, ScaledCoTriples43, ScaledCoHR43, ScaledCoSB43) 

Year43WOBA <-  Year43 %>% mutate(WOBA =  ((ScaledCoBB43*BB) + (ScaledCoSingles43*Singles) + (ScaledCoDoubles43*Doubles) + (ScaledCoTriples43*Triples) + (ScaledCoHR43*HR) + (ScaledCoSB43*SB)) / (AB + BB))

FinalYear43 <- Year43WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA43)/wOBASCALE43) * PA) 
library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx", 
                                  sheet = "1944")

Year44 <- AAGPBLCountingStats
rm("AAGPBLCountingStats") 

model44 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model44)

hist(residuals(model44), col = "steelblue")

coefficients44 <- data.frame(model44[["coefficients"]])

OPS44 <- mean(Year44$OPS)

CoBB44 <- coefficients44[7,1]
CoSingle44 <- coefficients44[2,1]
CoDoubles44 <- coefficients44[3,1]
CoTriples44 <- coefficients44[4,1]
CoHR44 <- coefficients44[5,1]
CoSB44 <- coefficients44[6,1]

TotalSingles44 <- (sum(Year44$Singles))
TotalDoubles44 <- (sum(Year44$Doubles))
TotalTriples44 <- (sum(Year44$Triples))
TotalHR44 <- (sum(Year44$HR))
TotalBB44 <- (sum(Year44$BB))
TotalSB44 <- (sum(Year44$SB))
TotalAB44 <- (sum(Year44$AB))

leaguewOBA44 <- ((CoBB44*TotalBB43) + (CoSingle44*TotalSingles44) + (CoDoubles44*TotalDoubles44) + (CoTriples44*TotalTriples44) + (CoHR44*TotalHR44) + (CoSB44*TotalSB44)) / (TotalAB44 + TotalBB44)


wOBASCALE44 <- OPS44/leaguewOBA44

Scaledcoefficients44 <- data.frame((coefficients44$model44...coefficients...)*wOBASCALE44)

ScaledCoBB44 <- Scaledcoefficients44[7,1]
ScaledCoSingles44 <- Scaledcoefficients44[2,1]
ScaledCoDoubles44 <- Scaledcoefficients44[3,1]
ScaledCoTriples44 <- Scaledcoefficients44[4,1]
ScaledCoHR44 <- Scaledcoefficients44[5,1]
ScaledCoSB44 <- Scaledcoefficients44[6,1]

NewCoefficients44 <- data.frame(ScaledCoBB44, ScaledCoSingles44, ScaledCoDoubles44, ScaledCoTriples44, ScaledCoHR44, ScaledCoSB44) 

Year44WOBA <-  Year44 %>% mutate(WOBA =  ((ScaledCoBB44*BB) + (ScaledCoSingles44*Singles) + (ScaledCoDoubles44*Doubles) + (ScaledCoTriples44*Triples) + (ScaledCoHR44*HR) + (ScaledCoSB44*SB)) / (AB + BB))


FinalYear44 <- Year44WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA44)/wOBASCALE44) * PA) 


library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1945")

Year45 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model45 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model45)

hist(residuals(model45), col = "steelblue")

coefficients45 <- data.frame(model45[["coefficients"]])

OPS45 <- mean(Year45$OPS)

CoBB45 <- coefficients45[7,1]
CoSingle45 <- coefficients45[2,1]
CoDoubles45 <- coefficients45[3,1]
CoTriples45 <- coefficients45[4,1]
CoHR45 <- coefficients45[5,1]
CoSB45 <- coefficients45[6,1]

TotalSingles45 <- (sum(Year45$Singles))
TotalDoubles45 <- (sum(Year45$Doubles))
TotalTriples45 <- (sum(Year45$Triples))
TotalHR45 <- (sum(Year45$HR))
TotalBB45 <- (sum(Year45$BB))
TotalSB45 <- (sum(Year45$SB))
TotalAB45 <- (sum(Year45$AB))

leaguewOBA45 <- ((CoBB45*TotalBB43) + (CoSingle45*TotalSingles45) + (CoDoubles45*TotalDoubles45) + (CoTriples45*TotalTriples45) + (CoHR45*TotalHR45) + (CoSB45*TotalSB45)) / (TotalAB45 + TotalBB45)


wOBASCALE45 <- OPS45/leaguewOBA45

Scaledcoefficients45 <- data.frame((coefficients45$model45...coefficients...)*wOBASCALE45)

ScaledCoBB45 <- Scaledcoefficients45[7,1]
ScaledCoSingles45 <- Scaledcoefficients45[2,1]
ScaledCoDoubles45 <- Scaledcoefficients45[3,1]
ScaledCoTriples45 <- Scaledcoefficients45[4,1]
ScaledCoHR45 <- Scaledcoefficients45[5,1]
ScaledCoSB45 <- Scaledcoefficients45[6,1]

NewCoefficients45 <- data.frame(ScaledCoBB45, ScaledCoSingles45, ScaledCoDoubles45, ScaledCoTriples45, ScaledCoHR45, ScaledCoSB45)

Year45WOBA <-  Year45 %>% mutate(WOBA =  ((ScaledCoBB45*BB) + (ScaledCoSingles45*Singles) + (ScaledCoDoubles45*Doubles) + (ScaledCoTriples45*Triples) + (ScaledCoHR45*HR) + (ScaledCoSB45*SB)) / (AB + BB))


FinalYear45 <- Year45WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA45)/wOBASCALE45) * PA)

  


library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1946")

Year46 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model46 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model46)

hist(residuals(model46), col = "steelblue")

coefficients46 <- data.frame(model46[["coefficients"]])

OPS46 <- mean(Year46$OPS)

CoBB46 <- coefficients46[7,1]
CoSingle46 <- coefficients46[2,1]
CoDoubles46 <- coefficients46[3,1]
CoTriples46 <- coefficients46[4,1]
CoHR46 <- coefficients46[5,1]
CoSB46 <- coefficients46[6,1]

TotalSingles46 <- (sum(Year46$Singles))
TotalDoubles46 <- (sum(Year46$Doubles))
TotalTriples46 <- (sum(Year46$Triples))
TotalHR46 <- (sum(Year46$HR))
TotalBB46 <- (sum(Year46$BB))
TotalSB46 <- (sum(Year46$SB))
TotalAB46 <- (sum(Year46$AB))

leaguewOBA46 <- ((CoBB46*TotalBB43) + (CoSingle46*TotalSingles46) + (CoDoubles46*TotalDoubles46) + (CoTriples46*TotalTriples46) + (CoHR46*TotalHR46) + (CoSB46*TotalSB46)) / (TotalAB46 + TotalBB46)


wOBASCALE46 <- OPS46/leaguewOBA46

Scaledcoefficients46 <- data.frame((coefficients46$model46...coefficients...)*wOBASCALE46)

ScaledCoBB46 <- Scaledcoefficients46[7,1]
ScaledCoSingles46 <- Scaledcoefficients46[2,1]
ScaledCoDoubles46 <- Scaledcoefficients46[3,1]
ScaledCoTriples46 <- Scaledcoefficients46[4,1]
ScaledCoHR46 <- Scaledcoefficients46[5,1]
ScaledCoSB46 <- Scaledcoefficients46[6,1]

NewCoefficients46 <- data.frame(ScaledCoBB46, ScaledCoSingles46, ScaledCoDoubles46, ScaledCoTriples46, ScaledCoHR46, ScaledCoSB46)

Year46WOBA <-  Year46 %>% mutate(WOBA =  ((ScaledCoBB46*BB) + (ScaledCoSingles46*Singles) + (ScaledCoDoubles46*Doubles) + (ScaledCoTriples46*Triples) + (ScaledCoHR46*HR) + (ScaledCoSB46*SB)) / (AB + BB))


FinalYear46 <- Year46WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA46)/wOBASCALE46) * PA)



library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1947")

Year47 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model47 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model47)

hist(residuals(model47), col = "steelblue")

coefficients47 <- data.frame(model47[["coefficients"]])

OPS47 <- mean(Year47$OPS)

CoBB47 <- coefficients47[7,1]
CoSingle47 <- coefficients47[2,1]
CoDoubles47 <- coefficients47[3,1]
CoTriples47 <- coefficients47[4,1]
CoHR47 <- coefficients47[5,1]
CoSB47 <- coefficients47[6,1]

TotalSingles47 <- (sum(Year47$Singles))
TotalDoubles47 <- (sum(Year47$Doubles))
TotalTriples47 <- (sum(Year47$Triples))
TotalHR47 <- (sum(Year47$HR))
TotalBB47 <- (sum(Year47$BB))
TotalSB47 <- (sum(Year47$SB))
TotalAB47 <- (sum(Year47$AB))

leaguewOBA47 <- ((CoBB47*TotalBB43) + (CoSingle47*TotalSingles47) + (CoDoubles47*TotalDoubles47) + (CoTriples47*TotalTriples47) + (CoHR47*TotalHR47) + (CoSB47*TotalSB47)) / (TotalAB47 + TotalBB47)


wOBASCALE47 <- OPS47/leaguewOBA47

Scaledcoefficients47 <- data.frame((coefficients47$model47...coefficients...)*wOBASCALE47)

ScaledCoBB47 <- Scaledcoefficients47[7,1]
ScaledCoSingles47 <- Scaledcoefficients47[2,1]
ScaledCoDoubles47 <- Scaledcoefficients47[3,1]
ScaledCoTriples47 <- Scaledcoefficients47[4,1]
ScaledCoHR47 <- Scaledcoefficients47[5,1]
ScaledCoSB47 <- Scaledcoefficients47[6,1]

NewCoefficients47 <- data.frame(ScaledCoBB47, ScaledCoSingles47, ScaledCoDoubles47, ScaledCoTriples47, ScaledCoHR47, ScaledCoSB47)

Year47WOBA <-  Year47 %>% mutate(WOBA =  ((ScaledCoBB47*BB) + (ScaledCoSingles47*Singles) + (ScaledCoDoubles47*Doubles) + (ScaledCoTriples47*Triples) + (ScaledCoHR47*HR) + (ScaledCoSB47*SB)) / (AB + BB))


FinalYear47 <- Year47WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA47)/wOBASCALE47) * PA)

library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1948")

Year48 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model48 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model48)

hist(residuals(model48), col = "steelblue")

coefficients48 <- data.frame(model48[["coefficients"]])

OPS48 <- mean(Year48$OPS)

CoBB48 <- coefficients48[7,1]
CoSingle48 <- coefficients48[2,1]
CoDoubles48 <- coefficients48[3,1]
CoTriples48 <- coefficients48[4,1]
CoHR48 <- coefficients48[5,1]
CoSB48 <- coefficients48[6,1]

TotalSingles48 <- (sum(Year48$Singles))
TotalDoubles48 <- (sum(Year48$Doubles))
TotalTriples48 <- (sum(Year48$Triples))
TotalHR48 <- (sum(Year48$HR))
TotalBB48 <- (sum(Year48$BB))
TotalSB48 <- (sum(Year48$SB))
TotalAB48 <- (sum(Year48$AB))

leaguewOBA48 <- ((CoBB48*TotalBB43) + (CoSingle48*TotalSingles48) + (CoDoubles48*TotalDoubles48) + (CoTriples48*TotalTriples48) + (CoHR48*TotalHR48) + (CoSB48*TotalSB48)) / (TotalAB48 + TotalBB48)


wOBASCALE48 <- OPS48/leaguewOBA48

Scaledcoefficients48 <- data.frame((coefficients48$model48...coefficients...)*wOBASCALE48)

ScaledCoBB48 <- Scaledcoefficients48[7,1]
ScaledCoSingles48 <- Scaledcoefficients48[2,1]
ScaledCoDoubles48 <- Scaledcoefficients48[3,1]
ScaledCoTriples48 <- Scaledcoefficients48[4,1]
ScaledCoHR48 <- Scaledcoefficients48[5,1]
ScaledCoSB48 <- Scaledcoefficients48[6,1]

NewCoefficients48 <- data.frame(ScaledCoBB48, ScaledCoSingles48, ScaledCoDoubles48, ScaledCoTriples48, ScaledCoHR48, ScaledCoSB48)

Year48WOBA <-  Year48 %>% mutate(WOBA =  ((ScaledCoBB48*BB) + (ScaledCoSingles48*Singles) + (ScaledCoDoubles48*Doubles) + (ScaledCoTriples48*Triples) + (ScaledCoHR48*HR) + (ScaledCoSB48*SB)) / (AB + BB))


FinalYear48 <- Year48WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA48)/wOBASCALE48) * PA)


library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1949")

Year49 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model49 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model49)

hist(residuals(model49), col = "steelblue")

coefficients49 <- data.frame(model49[["coefficients"]])

OPS49 <- mean(Year49$OPS)

CoBB49 <- coefficients49[7,1]
CoSingle49 <- coefficients49[2,1]
CoDoubles49 <- coefficients49[3,1]
CoTriples49 <- coefficients49[4,1]
CoHR49 <- coefficients49[5,1]
CoSB49 <- coefficients49[6,1]

TotalSingles49 <- (sum(Year49$Singles))
TotalDoubles49 <- (sum(Year49$Doubles))
TotalTriples49 <- (sum(Year49$Triples))
TotalHR49 <- (sum(Year49$HR))
TotalBB49 <- (sum(Year49$BB))
TotalSB49 <- (sum(Year49$SB))
TotalAB49 <- (sum(Year49$AB))

leaguewOBA49 <- ((CoBB49*TotalBB43) + (CoSingle49*TotalSingles49) + (CoDoubles49*TotalDoubles49) + (CoTriples49*TotalTriples49) + (CoHR49*TotalHR49) + (CoSB49*TotalSB49)) / (TotalAB49 + TotalBB49)


wOBASCALE49 <- OPS49/leaguewOBA49

Scaledcoefficients49 <- data.frame((coefficients49$model49...coefficients...)*wOBASCALE49)

ScaledCoBB49 <- Scaledcoefficients49[7,1]
ScaledCoSingles49 <- Scaledcoefficients49[2,1]
ScaledCoDoubles49 <- Scaledcoefficients49[3,1]
ScaledCoTriples49 <- Scaledcoefficients49[4,1]
ScaledCoHR49 <- Scaledcoefficients49[5,1]
ScaledCoSB49 <- Scaledcoefficients49[6,1]

NewCoefficients49 <- data.frame(ScaledCoBB49, ScaledCoSingles49, ScaledCoDoubles49, ScaledCoTriples49, ScaledCoHR49, ScaledCoSB49)

Year49WOBA <-  Year49 %>% mutate(WOBA =  ((ScaledCoBB49*BB) + (ScaledCoSingles49*Singles) + (ScaledCoDoubles49*Doubles) + (ScaledCoTriples49*Triples) + (ScaledCoHR49*HR) + (ScaledCoSB49*SB)) / (AB + BB))


FinalYear49 <- Year49WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA49)/wOBASCALE49) * PA)


library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1950")

Year50 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model50 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model50)

hist(residuals(model50), col = "steelblue")

coefficients50 <- data.frame(model50[["coefficients"]])

OPS50 <- mean(Year50$OPS)

CoBB50 <- coefficients50[7,1]
CoSingle50 <- coefficients50[2,1]
CoDoubles50 <- coefficients50[3,1]
CoTriples50 <- coefficients50[4,1]
CoHR50 <- coefficients50[5,1]
CoSB50 <- coefficients50[6,1]

TotalSingles50 <- (sum(Year50$Singles))
TotalDoubles50 <- (sum(Year50$Doubles))
TotalTriples50 <- (sum(Year50$Triples))
TotalHR50 <- (sum(Year50$HR))
TotalBB50 <- (sum(Year50$BB))
TotalSB50 <- (sum(Year50$SB))
TotalAB50 <- (sum(Year50$AB))

leaguewOBA50 <- ((CoBB50*TotalBB43) + (CoSingle50*TotalSingles50) + (CoDoubles50*TotalDoubles50) + (CoTriples50*TotalTriples50) + (CoHR50*TotalHR50) + (CoSB50*TotalSB50)) / (TotalAB50 + TotalBB50)


wOBASCALE50 <- OPS50/leaguewOBA50

Scaledcoefficients50 <- data.frame((coefficients50$model50...coefficients...)*wOBASCALE50)

ScaledCoBB50 <- Scaledcoefficients50[7,1]
ScaledCoSingles50 <- Scaledcoefficients50[2,1]
ScaledCoDoubles50 <- Scaledcoefficients50[3,1]
ScaledCoTriples50 <- Scaledcoefficients50[4,1]
ScaledCoHR50 <- Scaledcoefficients50[5,1]
ScaledCoSB50 <- Scaledcoefficients50[6,1]

NewCoefficients50 <- data.frame(ScaledCoBB50, ScaledCoSingles50, ScaledCoDoubles50, ScaledCoTriples50, ScaledCoHR50, ScaledCoSB50)

Year50WOBA <-  Year50 %>% mutate(WOBA =  ((ScaledCoBB50*BB) + (ScaledCoSingles50*Singles) + (ScaledCoDoubles50*Doubles) + (ScaledCoTriples50*Triples) + (ScaledCoHR50*HR) + (ScaledCoSB50*SB)) / (AB + BB))


FinalYear50 <- Year50WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA50)/wOBASCALE50) * PA)


library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1951")

Year51 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model51 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model51)

hist(residuals(model51), col = "steelblue")

coefficients51 <- data.frame(model51[["coefficients"]])

OPS51 <- mean(Year51$OPS)

CoBB51 <- coefficients51[7,1]
CoSingle51 <- coefficients51[2,1]
CoDoubles51 <- coefficients51[3,1]
CoTriples51 <- coefficients51[4,1]
CoHR51 <- coefficients51[5,1]
CoSB51 <- coefficients51[6,1]

TotalSingles51 <- (sum(Year51$Singles))
TotalDoubles51 <- (sum(Year51$Doubles))
TotalTriples51 <- (sum(Year51$Triples))
TotalHR51 <- (sum(Year51$HR))
TotalBB51 <- (sum(Year51$BB))
TotalSB51 <- (sum(Year51$SB))
TotalAB51 <- (sum(Year51$AB))

leaguewOBA51 <- ((CoBB51*TotalBB43) + (CoSingle51*TotalSingles51) + (CoDoubles51*TotalDoubles51) + (CoTriples51*TotalTriples51) + (CoHR51*TotalHR51) + (CoSB51*TotalSB51)) / (TotalAB51 + TotalBB51)


wOBASCALE51 <- OPS51/leaguewOBA51

Scaledcoefficients51 <- data.frame((coefficients51$model51...coefficients...)*wOBASCALE51)

ScaledCoBB51 <- Scaledcoefficients51[7,1]
ScaledCoSingles51 <- Scaledcoefficients51[2,1]
ScaledCoDoubles51 <- Scaledcoefficients51[3,1]
ScaledCoTriples51 <- Scaledcoefficients51[4,1]
ScaledCoHR51 <- Scaledcoefficients51[5,1]
ScaledCoSB51 <- Scaledcoefficients51[6,1]

NewCoefficients51 <- data.frame(ScaledCoBB51, ScaledCoSingles51, ScaledCoDoubles51, ScaledCoTriples51, ScaledCoHR51, ScaledCoSB51)

Year51WOBA <-  Year51 %>% mutate(WOBA =  ((ScaledCoBB51*BB) + (ScaledCoSingles51*Singles) + (ScaledCoDoubles51*Doubles) + (ScaledCoTriples51*Triples) + (ScaledCoHR51*HR) + (ScaledCoSB51*SB)) / (AB + BB))


FinalYear51 <- Year51WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA51)/wOBASCALE51) * PA)


library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1952")

Year52 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model52 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model52)

hist(residuals(model52), col = "steelblue")

coefficients52 <- data.frame(model52[["coefficients"]])

OPS52 <- mean(Year52$OPS)

CoBB52 <- coefficients52[7,1]
CoSingle52 <- coefficients52[2,1]
CoDoubles52 <- coefficients52[3,1]
CoTriples52 <- coefficients52[4,1]
CoHR52 <- coefficients52[5,1]
CoSB52 <- coefficients52[6,1]

TotalSingles52 <- (sum(Year52$Singles))
TotalDoubles52 <- (sum(Year52$Doubles))
TotalTriples52 <- (sum(Year52$Triples))
TotalHR52 <- (sum(Year52$HR))
TotalBB52 <- (sum(Year52$BB))
TotalSB52 <- (sum(Year52$SB))
TotalAB52 <- (sum(Year52$AB))

leaguewOBA52 <- ((CoBB52*TotalBB43) + (CoSingle52*TotalSingles52) + (CoDoubles52*TotalDoubles52) + (CoTriples52*TotalTriples52) + (CoHR52*TotalHR52) + (CoSB52*TotalSB52)) / (TotalAB52 + TotalBB52)


wOBASCALE52 <- OPS52/leaguewOBA52

Scaledcoefficients52 <- data.frame((coefficients52$model52...coefficients...)*wOBASCALE52)

ScaledCoBB52 <- Scaledcoefficients52[7,1]
ScaledCoSingles52 <- Scaledcoefficients52[2,1]
ScaledCoDoubles52 <- Scaledcoefficients52[3,1]
ScaledCoTriples52 <- Scaledcoefficients52[4,1]
ScaledCoHR52 <- Scaledcoefficients52[5,1]
ScaledCoSB52 <- Scaledcoefficients52[6,1]

NewCoefficients52 <- data.frame(ScaledCoBB52, ScaledCoSingles52, ScaledCoDoubles52, ScaledCoTriples52, ScaledCoHR52, ScaledCoSB52)

Year52WOBA <-  Year52 %>% mutate(WOBA =  ((ScaledCoBB52*BB) + (ScaledCoSingles52*Singles) + (ScaledCoDoubles52*Doubles) + (ScaledCoTriples52*Triples) + (ScaledCoHR52*HR) + (ScaledCoSB52*SB)) / (AB + BB))


FinalYear52 <- Year52WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA52)/wOBASCALE52) * PA)




library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1953")

Year53 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model53 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model53)

hist(residuals(model53), col = "steelblue")

coefficients53 <- data.frame(model53[["coefficients"]])

OPS53 <- mean(Year53$OPS)

CoBB53 <- coefficients53[7,1]
CoSingle53 <- coefficients53[2,1]
CoDoubles53 <- coefficients53[3,1]
CoTriples53 <- coefficients53[4,1]
CoHR53 <- coefficients53[5,1]
CoSB53 <- coefficients53[6,1]

TotalSingles53 <- (sum(Year53$Singles))
TotalDoubles53 <- (sum(Year53$Doubles))
TotalTriples53 <- (sum(Year53$Triples))
TotalHR53 <- (sum(Year53$HR))
TotalBB53 <- (sum(Year53$BB))
TotalSB53 <- (sum(Year53$SB))
TotalAB53 <- (sum(Year53$AB))

leaguewOBA53 <- ((CoBB53*TotalBB43) + (CoSingle53*TotalSingles53) + (CoDoubles53*TotalDoubles53) + (CoTriples53*TotalTriples53) + (CoHR53*TotalHR53) + (CoSB53*TotalSB53)) / (TotalAB53 + TotalBB53)


wOBASCALE53 <- OPS53/leaguewOBA53

Scaledcoefficients53 <- data.frame((coefficients53$model53...coefficients...)*wOBASCALE53)

ScaledCoBB53 <- Scaledcoefficients53[7,1]
ScaledCoSingles53 <- Scaledcoefficients53[2,1]
ScaledCoDoubles53 <- Scaledcoefficients53[3,1]
ScaledCoTriples53 <- Scaledcoefficients53[4,1]
ScaledCoHR53 <- Scaledcoefficients53[5,1]
ScaledCoSB53 <- Scaledcoefficients53[6,1]

NewCoefficients53 <- data.frame(ScaledCoBB53, ScaledCoSingles53, ScaledCoDoubles53, ScaledCoTriples53, ScaledCoHR53, ScaledCoSB53)

Year53WOBA <-  Year53 %>% mutate(WOBA =  ((ScaledCoBB53*BB) + (ScaledCoSingles53*Singles) + (ScaledCoDoubles53*Doubles) + (ScaledCoTriples53*Triples) + (ScaledCoHR53*HR) + (ScaledCoSB53*SB)) / (AB + BB))


FinalYear53 <- Year53WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA53)/wOBASCALE53) * PA)


library(readxl)
AAGPBLCountingStats <- read_excel("/Users/jesseferber/Desktop/AAGPBLCountingStats.xlsx",
                                  sheet = "1954")

Year54 <- AAGPBLCountingStats
rm("AAGPBLCountingStats")

model54 <- lm(R ~ Singles + Doubles + Triples + HR + SB + BB, data = Year43)

summary(model54)

hist(residuals(model54), col = "steelblue")

coefficients54 <- data.frame(model54[["coefficients"]])

OPS54 <- mean(Year54$OPS)

CoBB54 <- coefficients54[7,1]
CoSingle54 <- coefficients54[2,1]
CoDoubles54 <- coefficients54[3,1]
CoTriples54 <- coefficients54[4,1]
CoHR54 <- coefficients54[5,1]
CoSB54 <- coefficients54[6,1]

TotalSingles54 <- (sum(Year54$Singles))
TotalDoubles54 <- (sum(Year54$Doubles))
TotalTriples54 <- (sum(Year54$Triples))
TotalHR54 <- (sum(Year54$HR))
TotalBB54 <- (sum(Year54$BB))
TotalSB54 <- (sum(Year54$SB))
TotalAB54 <- (sum(Year54$AB))

leaguewOBA54 <- ((CoBB54*TotalBB43) + (CoSingle54*TotalSingles54) + (CoDoubles54*TotalDoubles54) + (CoTriples54*TotalTriples54) + (CoHR54*TotalHR54) + (CoSB54*TotalSB54)) / (TotalAB54 + TotalBB54)


wOBASCALE54 <- OPS54/leaguewOBA54

Scaledcoefficients54 <- data.frame((coefficients54$model54...coefficients...)*wOBASCALE54)

ScaledCoBB54 <- Scaledcoefficients54[7,1]
ScaledCoSingles54 <- Scaledcoefficients54[2,1]
ScaledCoDoubles54 <- Scaledcoefficients54[3,1]
ScaledCoTriples54 <- Scaledcoefficients54[4,1]
ScaledCoHR54 <- Scaledcoefficients54[5,1]
ScaledCoSB54 <- Scaledcoefficients54[6,1]

NewCoefficients54 <- data.frame(ScaledCoBB54, ScaledCoSingles54, ScaledCoDoubles54, ScaledCoTriples54, ScaledCoHR54, ScaledCoSB54)

Year54WOBA <-  Year54 %>% mutate(WOBA =  ((ScaledCoBB54*BB) + (ScaledCoSingles54*Singles) + (ScaledCoDoubles54*Doubles) + (ScaledCoTriples54*Triples) + (ScaledCoHR54*HR) + (ScaledCoSB54*SB)) / (AB + BB))


FinalYear54 <- Year54WOBA %>% mutate(wRAA = ((WOBA - leaguewOBA54)/wOBASCALE54) * PA)




