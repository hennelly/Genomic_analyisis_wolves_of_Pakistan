#mtDNA
pdf ("June7_ntmtDNAancestry.pdf", height=3, width=10) #save as pdf

dat <- read.csv("elevationvslineage.csv", header=TRUE)
ggplot(dat,aes(x=Elevation..m., y=Identification.of.Lineage, color=Identification.of.Lineage)) + geom_point() + scale_color_manual(values = c("maroon4","mediumseagreen", "orange2")) +theme_classic()
dev.off()

#nuclear
dat <- read.csv("elevationvsancestry_nuclear.csv", header=TRUE)

#Indian ancestry
pdf ("June7_Indianancestry3.pdf", height=10, width=20) #save as pdf
y <- ggplot(dat,aes(x=Elevation..m., y=X.Indian, color=mtDNA.lineage)) + geom_point(size=7) +theme_classic() +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed", color="black" )
y + scale_color_manual(values = c("mediumseagreen","maroon4", "orange2")) + geom_hline(yintercept=50, linetype="dotted", color = "red") + geom_vline(xintercept=1775, linetype="dotted", color = "red") 
dev.off()

#Tibetan ancestry
pdf ("June7_Tibetanancestry3.pdf", height=10, width=20) #save as pdf
x <- ggplot(dat,aes(x=Elevation..m., y=X.Tibetan, color=mtDNA.lineage)) + geom_point(size=7) +theme_classic() +
  geom_smooth(method="loess", se = FALSE, linetype = "dashed", color="black")
x + scale_color_manual(values = c("mediumseagreen","maroon4", "orange2")) + geom_hline(yintercept=50, linetype="dotted", color = "red") + geom_vline(xintercept=2725, linetype="dotted", color = "red") 
dev.off()
