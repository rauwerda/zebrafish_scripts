#determination of the yields of each mother.
a<-read.csv("../Yield-5x5.csv", sep = "\t", stringsAsFactor=F) 
dim(a)
a<- a[1:24,]
png("../Yzield-5x5.png")
t(a$ID,a$yield..ng., col="white", main="Yield 5x5", xlab="index", ylab="Yield")
points(a$ID[a$Mother==1],a$yield..ng.[a$Mother==1],col="red",pch="1")
points(a$ID[a$Mother==2],a$yield..ng.[a$Mother==2],col="blue",pch="2")
points(a$ID[a$Mother==3],a$yield..ng.[a$Mother==3],col="green",pch="3")
points(a$ID[a$Mother==4],a$yield..ng.[a$Mother==4],col="magenta",pch="4")
points(a$ID[a$Mother==5],a$yield..ng.[a$Mother==5],col="black",pch="5")
graphics.off()


