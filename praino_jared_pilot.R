

install.packages("haven")
library(haven)
library(dplyr)

ffdataset <- read_dta('/Users/eunicewu/Documents/INFO370/fragile_families/ALLMERGED_pub.dta')
utils::View(ffdataset)

year0 <- read.csv(file="/Users/jaredpraino/Documents/University of Washington/Senior Year/INFO370/final_project/project-fragile-families/data/Baseline_Features.csv",header=TRUE,sep=",")
year1 <- read.csv(file="/Users/jaredpraino/Documents/University of Washington/Senior Year/INFO370/final_project/project-fragile-families/data/Year1_Features.csv", header=TRUE,sep=",")
year3 <- read.csv(file="/Users/jaredpraino/Documents/University of Washington/Senior Year/INFO370/final_project/project-fragile-families/data/Year3_Features.csv",header=TRUE,sep=",")
year5 <- read.csv(file="/Users/jaredpraino/Documents/University of Washington/Senior Year/INFO370/final_project/project-fragile-families/data/Year5_Features.csv",header=TRUE,sep=",")
year9 <- read.csv(file="/Users/jaredpraino/Documents/University of Washington/Senior Year/INFO370/final_project/project-fragile-families/data/Year9_Features.csv",header=TRUE,sep=",")


if(!require(mlbench)){install.packages("mlbench"); require(mlbench)} # common datasets to use
if(!require(caret)){install.packages("caret", dependencies = c("Depends", "Suggests")); require(caret)} # ML package and its dependencies. This will take awhile!
if(!require(dplyr)){install.packages("dplyr"); require(dplyr)}
set.seed(370)
if(!require(ModelMetrics)){install.packages("ModelMetrics"); require(ModelMetrics)}
if(!require(recipes)){install.packages("recipes"); require(recipes)}
if(!require(DEoptimR)){install.packages("DEoptimR"); require(DEoptimR)}


select9 <- year9 %>% select(idnum,t5c13a,t5c13b,t5c13c) %>% 
  filter(t5c13a>-1,t5c13b>-1,t5c13c>-1)



colNames0 <- colnames(baseline)
year0$mothid1 <- NULL
year0$X <- NULL
ncol(year0) # 48 vars


colNames1 <- colnames(year1)
year1$mothid2 <- NULL
year1$X <- NULL
ncol(year1) #41


colNames3 <- colnames(year3)
year3$mothid3 <- NULL
year3$X <- NULL
ncol(year3) #48


colNames5 <- colnames(year5)
year5$mothid4 <- NULL
year5$X <- NULL
ncol(year5) #62


colNames9 <- colnames(year9)
year9$mothid4 <- NULL
year9$X <- NULL
ncol(year5) #62















