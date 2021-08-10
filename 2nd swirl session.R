library(dplyr)
library(swirl)
swirl()
Teofizzy
3
1
1
mydf<- read.csv(path2csv, stringsAsFactors =  FALSE)
Teofizzy
1
dim(mydf)
head(mydf)
library(dplyr)
packageVersion("dplyr")
cran<- tbl_df(mydf)
rm("mydf")
cran
?select
select(cran, ip_id, package, country)
5:20
select(cran, r_arch:country)
select(cran, country:r_arch)
cran
select(cran, -time)
-5:20
-(5:20)
select(cran, -(X:size))
filter(cran, package == "swirl")
filter(cran, r_version == "3.1.1", country == "US")
?Comparison
filter(cran, r_version <= "3.0.2", country == "IN")
#the below code is a logical operation of either/or
filter(cran, country == "US" | country == "IN")
filter(cran, size > 100500, r_OS == "linux-gnu")
filter(cran, size > 100500, r_os == "linux-gnu")
is.na(c(3,5,NA,10))
!is.na(c(3,5,NA,10))
#the below code shows the rows of r_version that are not NAs
filter(cran, !is.na(r_version))
cran2<-select(cran, size:ip_id)
#the below code arranges the specified variables in ascending order by default
arrange(cran2, ip_id)
#the below snippet of code arranges the variable specified in descending order
arrange(cran2, desc(ip_id))
## We can also arrange the data according to the values of multiple variables. For example,
#| arrange(cran2, package, ip_id) will first arrange by package names (ascending
#| alphabetically), then by ip_id. This means that if there are multiple rows with the same
#| value for package, they will be sorted by ip_id (ascending numerically). Try arrange(cran2,
#| package, ip_id) now.
arrange(cran2, package, ip_id)
arrange(cran2, country, desc(r_version), ip_id)
select(cran, ip_id, package, size)
cran3 <- select(cran, ip_id, package, size)
cran3
##It's common to create a new variable based on the value of one or more variables already in
##| a dataset. The mutate() function does exactly this.
mutate(cran3, size_mb = size/ 2^20)
mutate(cran3, size_gb = size/2^10)
mutate(cran3, size_mb = size/ 2^20, size_gb = size_mb/ 2^10)
#the below snippet of code assumes that the sizes are less by 100 bytes,now to correct = +1000
mutate(cran3, correct_size =size + 1000)
summarize(cran, avg_byte = mean(size))
select(cran, size %>% mutate(avg_bytes = mean(size)))          
avg_bytes<-summarize(cran, size, mean)
help()
skip()
summarize(cran, avg_bytes = mean(size))
2
teofilo48ligawa@gmail.com
XcP5fZ1CYlQXOk1a
