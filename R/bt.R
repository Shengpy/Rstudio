url <- "C://Users//Admin//Desktop//"
input <- paste(url,"inputbai2.txt",sep="") 
output <- paste(url,"outputbai2.txt",sep="") 

con <- file(input)
open(con, "r")
n <- readLines(con, 1)
close(con)

con_output <- file(output)
open(con_output, "w")
writeLines(paste(n), con_output,"")

writeLines(" = ", con_output,"")
n <- strtoi(n)
a<- as.character(n %/% 500)
writeLines(a, con_output,"")
writeLines("*500 + ", con_output,"")
a1<-n %% 500

b<-as.character(a1 %/% 200)
writeLines(b, con_output,"")
writeLines("*200 + ", con_output,"")
b1<-a1 %% 200

c<-as.character(b1 %/% 100)
writeLines(c, con_output,"")
writeLines("*100 + ", con_output,"")
c1<-b1 %% 100

d<-as.character(c1 %/% 50)
writeLines(d, con_output,"")
writeLines("*50 + ", con_output,"")
d1<-c1 %% 50

e<-as.character(d1 %/% 20)
writeLines(e, con_output,"")
writeLines("*20 + ", con_output,"")
e1<-d1 %% 20

f<-as.character(e1 %/% 10)
writeLines(f, con_output,"")
writeLines("*10 + ", con_output,"")
f1<-e1 %% 10

g<-as.character(f1 %/% 5)
writeLines(g, con_output,"")
writeLines("*5 + ", con_output,"")
g1<-f1 %% 5

h<-as.character(g1 %/% 2)
writeLines(h, con_output,"")
writeLines("*2 + ", con_output,"")
h1<-g1 %% 2

j<-as.character(h1 %/% 1)
writeLines(j, con_output,"")
writeLines("*1", con_output,"")
j1<-h1 %% 1

close(con_output)
