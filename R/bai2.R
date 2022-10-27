url <- "C://Users//Admin//Desktop//" 
input <- paste(url,"inputbai1.csv",sep="")
output <- paste(url,"outputbai1.csv",sep="")
data <- read.csv(input) 
data["DTB hoc sinh"]<-round((data["Toan"]+data["Ly"]+data["Hoa"])/3,1)
con<-file(output)
open(con,'w')
write.csv(data,con)
close(con)