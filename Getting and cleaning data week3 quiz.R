fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "./quiz3")
fileUrl
quiz3open<-download.file(fileUrl, destfile = "./quiz3")
quiz3open
read.csv(quiz3open)
read.csv(file = "quiz3", header = TRUE, sep = ",")
quiztatu<-read.csv(file = "quiz3", header = TRUE, sep = ",")
print(quiztatu)
agricultureLogical <- quiztatu$ACR == 3 & quiztatu$AGS == 6
head(which(agricultureLogical), 3)
q2.csv<-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "q2")
q2.csv1<-read.csv(file = "q2", header = TRUE, sep = ",")
q2.csv1
quiz3real<-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile = "q3")
q3.csv<-read.csv(file = "q3", header =  TRUE, sep = ",")
q3.csv
library(data.table)
FGDP<-data.table::fread('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
                         , skip=4
                         , nrows = 190
                         , select = c(1, 2, 4, 5)
                         , col.names=c("CountryCode", "Rank", "Economy", "Total")
)
FEDSTATS_Country <- data.table::fread('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
)
mergedDT <- merge(FGDP, FEDSTATS_Country, by = 'CountryCode')
nrow(mergedDT)
mergedDT[order(-Rank)][13,.(Economy)]
library(jpeg)
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg'
              , 'jeff.jpg'
              , mode='wb' )
picture <- jpeg::readJPEG('jeff.jpg'
                          , native=TRUE)
picture
quantile(picture, probs = c(0.3, 0.8) )
mergedDT[`Income Group` == "High income: OECD"
         , lapply(.SD, mean)
         , .SDcols = c("Rank")
         , by = "Income Group"]
mergedDT[`Income Group` == "High income: nonOECD"
         , lapply(.SD, mean)
         , .SDcols = c("Rank")
         , by = "Income Group"]
breaks <- quantile(mergedDT[, Rank], probs = seq(0, 1, 0.2), na.rm = TRUE)
mergedDT$quantileGDP <- cut(mergedDT[, Rank], breaks = breaks)
mergedDT[`Income Group` == "Lower middle income", .N, by = c("Income Group", "quantileGDP")]
