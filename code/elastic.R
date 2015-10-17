#install.packages("elastic")
#install.packages("readr")

setwd("~/R/elasticsearch")

library(elastic)
library(jsonlite)


connect()
#shakespeare <- system.file("examples", "shakespeare_data.json", package = "elastic")
docs_bulk("shakespeare_full.json")



Search(index="shakespeare", type="act")



json <- docs_get(index="shakespeare", type="line", id=1538, raw=T)
fromJSON(json)



json <- Search(index="shakespeare", type="line", q="text_entry:\"keep close\"")
fromJSON(json)



# http://localhost:9200/_cat/indices?v

cat_indices(verbose = TRUE)


