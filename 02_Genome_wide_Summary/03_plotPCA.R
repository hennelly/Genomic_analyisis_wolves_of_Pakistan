#Eurasian wolf PCA
cov <- read.csv("PCA_Eurasianwolf.csv", header=TRUE)

#Read on cov file from PCAngsd output
cov<-as.matrix(read.table("PCA_Eurasianwolves.cov"))

#Get eigenvalues and eigenvectors
e<-eigen(cov)
plot(e$vectors[,1:2])

e$values/sum(e$values)

#read in the sample list data
names<-read.csv("PCA_Eurasianwolf_names.csv")

#remake the plot with the colors we want
pdf('PCA_Eurasianwolves.pdf', width=8, height=7)
plot(e$vectors[,1:2], pch=21, col="black", cex=2, bg=names$Color)
dev.off()
#addtext
text(e$vectors[,1:2],
     labels = row.names(cov),
     cex = 0.6, pos = 4, col = "red")
