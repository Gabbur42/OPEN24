lalalalala
covid<-read.csv2("https://www.data.gouv.fr/fr/datasets/r/f4935ed4-7a88-44e4-8f8a-33910a151d42" , 
                 header=TRUE, dec=".", sep=";", 
                 skip=7, encoding = "UTF-8")
covid

dim(covid)
names(covid)

infection = covid[,3]
pays= covid[,2]


