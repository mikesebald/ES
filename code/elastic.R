#install.packages("elastic")
#install.packages("readr")

#setwd("~/R/elasticsearch")

library(elastic)
library(jsonlite)
library(lubridate)

connect()
#shakespeare <- system.file("examples", "shakespeare_data.json", package = "elastic")
#docs_bulk("shakespeare_full.json")



Search(index="shakespeare", type="act")



json <- docs_get(index="shakespeare", type="line", id=1538, raw=T)
fromJSON(json)


#not working
json <- Search(index="shakespeare", type="line", q="text_entry:\"keep close\"")
fromJSON(json)



# http://localhost:9200/_cat/indices?v

cat_indices(verbose = TRUE)


vehicles <- read.csv("data//motor_vehicle_theft.csv", header = TRUE, stringsAsFactors = FALSE)

x <- strptime(vehicles[1,1], "%m/%d/%Y %I:%M:%S %p", tz = "US/Michigan")


