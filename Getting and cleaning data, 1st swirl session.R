library(swirl)
package_version(swirl)
package_version(swirl()
                
Teofilo Acholla Ligawa Gafna
1
0
2
install_from_swirl("Getting and Cleaning Data")
swirl()
Teofilo Acholla Ligawa Gafna
1
1
library(data.table)
housing <- data.table::fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
housing[VAL == 24, .N]
library(data.table)
natural_gas <- data.table::fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx")
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = paste0(getwd(), '/getdata%2Fdata%2FDATA.gov_NGAP.xlsx'), method = "curl")

dat <- xlsx::read.xlsx(file = "getdata%2Fdata%2FDATA.gov_NGAP.xlsx", sheetIndex = 1, rowIndex = 18:23, colIndex = 7:15)
sum(dat$Zip*dat$Ext,na.rm=T)
restaurant<-data.table::fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml")
restaurant
require(xml)
library("XML")
fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- XML::xmlTreeParse(sub("s", "", fileURL), useInternal = TRUE)
rootNode <- XML::xmlRoot(doc)
rootNode



DT <- data.table::fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv")
system.time(DT[,mean(pwgtp15),by=SEX])
