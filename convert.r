#*****************
# use haven for .sav to csv file conversion
# .sav is a proprietary format for IBM SPSS 
# .csv is an open source standard that is usable on multiple platforms for both open source and proprietary end user tools including Excel, Libreoffice and is supported by all programming language
#*****************

library(haven)

load_savfile <- read_spss("~/projects/sav-to-csv/data/Innbyggerdel\ tidsserie.sav")

saveascsv <- write.csv(load_savfile, file = "~/projects/sav-to-csv/dataset.csv", row.names = FALSE)

load_csvfile <- read.csv("/Users/tobiasmcvey/projects/sav-to-csv/dataset.csv")

