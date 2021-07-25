library(tidyverse)
require(stats4)
require(askpass)
library(datasets)
data("AirPassengers")
summary(AirPassengers)
plot(AirPassengers)
library(jsonlite)
library(datasets)
data(iris)
myjson<- toJSON(iris, pretty = TRUE)
myjson
cat(myjson)
sapply(myjson)
?sapply
sapply(myjson, summary)
iris2<-fromJSON(myjson)
iris2
head(iris2)
