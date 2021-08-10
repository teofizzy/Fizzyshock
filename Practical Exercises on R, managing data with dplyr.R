library(swirl)
swirl()
Teofilo Acholla Ligawa Gafna
2
3
swirl()
Teofilo Acholla Ligawa Gafna
2
2
0
1
1
mydf<-read.csv(path2csv, stringsAsFactors = FALSE)
dim(mydf)
head(mydf)
library(dplyr)
packageVersion("dplyr")
cran <- tbl_df(mydf)
rm(mydf)
rm("mydf")
cran
mydf
?select
select(cran, ip_id, package, country)
take1<-(cran$ip_id, cran$package, cran$country)
5:20
select(cran, r_arch:country)
select(cran, country:r_arch)
print(cran)
cran
##the below code does away wit the time variable of the cran data set
select(cran, -time)
-5:20
-(5:20)
#the below code omits the sequence within the parentheses
select(cran, -(x:size))
select(cran, date:size)
select(cran, -(date:size))
select(cran, -(X:size))
#How do I select a subset of rows? Ans = the filter function
filter(cran, package == "swirl")
# The == operator asks whether the thing on the left is equal to the thing on the right. If
| yes, then it returns TRUE. If no, then FALSE. In this case, package is an entire vector
| (column) of values, so package == "swirl" returns a vector of TRUEs and FALSEs. filter()
| then returns only the rows of cran corresponding to the TRUEs
filter(cran, r_version == "3.1.1", country == "US")
?Comparison
#the below snippet of code the users in India running an R version that is less than or equal
| to "3.0.2"
filter(cran, r_version <= "3.0.2", country == "IN")
