library(ggplot2)

dat <- read.csv ("Dstatistic_comparewithIndianwolfandTibetanwolf.csv", header=TRUE)
dat <- read.csv ("Dstatistic_comparewithIndianwolf.csv", header=TRUE)

pdf ("Dstatistic_Indianwolf_signifancec.pdf", height=8, width=8.5) #save as pdf
ggplot(dat, aes(x=Dstat, y=H2Names)) + 
  geom_point(color="maroon4") +
  geom_pointrange(aes(xmin=Dstat-SE, xmax=Dstat+SE), color="maroon4") + theme_classic() + geom_vline(xintercept=0.05772901,linetype=3)
dev.off()

dat <- read.csv ("Dstatistic_comparewithTibetanwolf.csv", header=TRUE)

pdf ("Dstatistic_Tibetanwolf_signifance.pdf", height=8, width=8.5) #save as pdf
ggplot(dat, aes(x=Dstat, y=H2Names)) + 
  geom_point(color="orange2", shape=dat$Significant_coded) +
  geom_pointrange(aes(xmin=Dstat-SE, xmax=Dstat+SE), color="orange2") + theme_classic() + geom_vline(xintercept=0.04996414,linetype=3)
dev.off()

## both group 

dat <- read.csv ("Dstatistic_bothgroups.csv", header=TRUE)

pdf ("Dstatistic_Tibetan_and_Indian_wolf_signifance.pdf", height=8, width=8.5) #save as pdf
ggplot(dat, aes(x=Dstat, y=H2Names)) + 
  geom_point(color=dat$Color) +
  geom_pointrange(aes(xmin=Dstat-SE, xmax=Dstat+SE), color=dat$Color) + theme_classic() + geom_vline(xintercept=0.04996414,linetype=3)
dev.off()
