## Visualizing In R 
library(ggplot2)

#K=2
dat <- read.csv ("Admixture_K2_updated.csv", header=TRUE)

pdf ("Admixture_K2_June5_again.pdf", height=2.5, width=8) #save as pdf
q <- ggplot(dat, aes(fill=Ancestry, y=Percentage, x=SampleName)) + 
    geom_bar(position="stack", stat="identity") +scale_fill_manual(values = c("bisque3","mediumseagreen", "orange2", "royalblue4", "red", "honeydew4")) 
q + theme(axis.text.x = element_text(angle = 90, hjust = 1))
p <- q + theme_classic()
p
dev.off()

#K=3
dat <- read.csv ("Admixture_K3_June5.csv", header=TRUE)

pdf ("Admixture_K3_June5.pdf", height=2.5, width=8) #save as pdf
q <- ggplot(dat, aes(fill=Ancestry, y=Percentage, x=SampleName)) + 
    geom_bar(position="stack", stat="identity") +scale_fill_manual(values = c("maroon4","bisque3", "mediumseagreen", "maroon4", "red", "honeydew4")) 
q + theme(axis.text.x = element_text(angle = 90, hjust = 1))
p <- q + theme_classic()
p
dev.off()

#K=4
dat <- read.csv ("Admixture_K4_June5.csv", header=TRUE)

pdf ("Admixture_K4_June5.pdf", height=2.5, width=8) #save as pdf
q <- ggplot(dat, aes(fill=Ancestry, y=Percentage, x=SampleName)) + 
    geom_bar(position="stack", stat="identity") +scale_fill_manual(values = c("mediumseagreen","orange2", "maroon4", "bisque3", "red", "honeydew4")) 
q + theme(axis.text.x = element_text(angle = 90, hjust = 1))
p <- q + theme_classic()
p
dev.off()

#K=5
dat <- read.csv ("Admixture_K5_June5.csv", header=TRUE)

pdf ("Admixture_K5_June5.pdf", height=2.5, width=8) #save as pdf
q <- ggplot(dat, aes(fill=Ancestry, y=Percentage, x=SampleName)) + 
    geom_bar(position="stack", stat="identity") +scale_fill_manual(values = c("mediumseagreen","bisque3", "maroon4", "orange2", "deepskyblue3", "darkgreen")) 
q + theme(axis.text.x = element_text(angle = 90, hjust = 1))
p <- q + theme_classic()
p
dev.off()

#K=6
dat <- read.csv ("Admixture_K6_June5.csv", header=TRUE)

pdf ("Admixture_K6_June5.pdf", height=2.5, width=8) #save as pdf
q <- ggplot(dat, aes(fill=Ancestry, y=Percentage, x=SampleName)) + 
    geom_bar(position="stack", stat="identity") +scale_fill_manual(values = c("mediumseagreen","darkgreen", "deepskyblue3", "maroon4", "bisque3", "orange2")) 
q + theme(axis.text.x = element_text(angle = 90, hjust = 1))
p <- q + theme_classic()
p
dev.off()

#K=6
dat <- read.csv ("Admixture_K7_June5.csv", header=TRUE)

pdf ("Admixture_K7_June5.pdf", height=2.5, width=8) #save as pdf
q <- ggplot(dat, aes(fill=Ancestry, y=Percentage, x=SampleName)) +
    geom_bar(position="stack", stat="identity") +scale_fill_manual(values = c("mediumseagreen","orange2", "lightgreen", "bisque3", "maroon4", "deepskyblue3", "darkgreen")) 
q + theme(axis.text.x = element_text(angle = 90, hjust = 1))
p <- q + theme_classic()
p
dev.off()

#Log Likelihoods 
dat <- read.csv ("NGSAdmix_loglike_June5.csv", header=TRUE)

pdf ("NGSAdmix_loglikelihoods_June5.pdf", height=5, width=6) #save as pdf
q <- ggplot(dat, aes(y=Log.Likelihood, x=K, group=K)) +
    geom_point(size=3) + theme_classic()
q
dev.off()
