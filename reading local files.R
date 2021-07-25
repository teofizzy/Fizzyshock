yoh <- if(!file.exists("data")){
  dir.create("data")
}
yoh
setwd("C:\Users\hp\Downloads")
getwd()
read.csv("C:\Users\hp\Documents\R\datasciencecoursera repo\Fizzyshock\Fixed_Speed_Cameras.csv", quote = "")
library(xlsx)
library(csv)
read.xlsx("C:\Users\hp\Downloads\Foreign Trade Summary (Ksh Million) (1).xlsx", header = TRUE)
