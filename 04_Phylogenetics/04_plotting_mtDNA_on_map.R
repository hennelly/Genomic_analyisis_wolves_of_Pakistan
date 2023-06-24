library(raster)
library(ggplot2)
library(ggrepel)
library(cowplot)
library(ggspatial)
library(libwgeom)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
install.packages("mapview")
library(ggmap)
library(mapview)

install.plibrary(ggmap)
ackages("ggmap")

install.packages("geodata")
library(maptools)
library(raster)
library(plyr)
library(ggplot2)
library(rgdal)
library(geodata)

#########################
### Obtain maps #########
#########################
Pakistan<-getData("GADM", country="PK", level=0)
India<-getData("GADM", country="IN", level=0)
China<-getData("GADM", country="CN", level=0)
Iran<-getData("GADM", country="Iran", level=0)
Afghan<-getData("GADM", country="Afghanistan", level=0)
Tajik<-getData("GADM", country="Tajikistan", level=0)
Uzbekistan<-getData("GADM", country="Uzbekistan", level=0)
Kyrgyzstan<-getData("GADM", country="Kyrgyzstan", level=0)
Turkmenistan<-getData("GADM", country="Turkmenistan", level=0)
Kazakhstan<-getData("GADM", country="Kazakhstan", level=0)
Nepal <-getData("GADM", country="Nepal", level=0)
Bhutan <-getData("GADM", country="Bhutan", level=0)
Bangladesh <-getData("GADM", country="Bangladesh", level=0)
Mongolia <-getData("GADM", country="Mongolia", level=0)
Myanmar <-getData("GADM", country="Myanmar", level=0)
SaudiAr <-getData("GADM", country="Saudi Arabia", level=0)
Armenia <-getData("GADM", country="Armenia", level=0)
Azerbaijan<-getData("GADM", country="Azerbaijan", level=0)
Georgia<-getData("GADM", country="Georgia", level=0)
Oman<-getData("GADM", country="Oman", level=0)
Laos<-getData("GADM", country="Laos", level=0)
Vietnam<-getData("GADM", country="Vietnam", level=0)
Thailand<-getData("GADM", country="Thailand", level=0)

#Get map data
Allcountries_largemap_Bhutan <- rbind(Iran, Bhutan, China, Myanmar, Laos, Vietnam, India, Thailand, Armenia, Azerbaijan, Pakistan, Afghan, Tajik,Uzbekistan,Kyrgyzstan, Turkmenistan, Kazakhstan, Nepal, Mongolia, Bangladesh)

#Get elevation
library(elevatr)
elevation_withKazakhstan <- elevatr::get_elev_raster(locations = Allcountries, z = 7, clip = "locations")
elevation_withPakistan <- elevatr::get_elev_raster(locations = Pakistan, z = 7, clip = "locations")
elevation_withAllCountries <- elevatr::get_elev_raster(locations = Allcountries_largemap, z = 7, clip = "locations")
elevation_withBhutan <- elevatr::get_elev_raster(locations = Allcountries_largemap_Bhutan, z = 7, clip = "locations")

#Read in location data
dat <- read.csv("Data_mtDNA_mapGeridata.csv", header=TRUE)

colors <- c("mediumseagreen", "maroon4", "orange2")
colors <- colors[as.factor(dat$lineage)]
shapes = c(21, 24)
shapes <- shapes[as.factor(dat$Museum_specimen)]

# Overview map terrain colour
install.packages("dichromat")
library(dichromat)
over.col <- colorRampPalette(c("white", "black"))

## Elevation map focused on Pakistan 
pdf("Map_mtDNAlineages_June8.pdf", height=10, width=11) #save as pdf
plot(elevation_withKazakhstan, col=over.col(100), xlim = c(50, 90), ylim = c(15, 45))
plot(Allcountries, add=TRUE, xlim = c(57, 90), ylim = c(18, 48) )
points(dat$Longitude, dat$Latitude, bg=colors, cex=2, col ="black", pch=shapes)
dev.off()

## Elevation map focused all of Asia 
pdf("Map_mtDNAlineages_Asia_June9_again.pdf", height=10, width=11) #save as pdf
plot(elevation_withBhutan, col=over.col(100), xlim = c(40, 110), ylim = c(15, 55))
plot(Allcountries_largemap_Bhutan, add=TRUE, xlim = c(57, 90), ylim = c(18, 48) )
points(dat$Longitude, dat$Latitude, bg=colors, cex=1.5, col ="black", pch=shapes)
dev.off()

pdf("Map_mtDNAlineages_Bhutan.pdf", height=10, width=11) #save as pdf
plot(elevation_withBhutan, col=over.col(100), xlim = c(40, 110), ylim = c(15, 55))
plot(Allcountries_largemap, add=TRUE, xlim = c(57, 90), ylim = c(18, 48) )
points(dat$Longitude, dat$Latitude, bg=colors, cex=1.5, col ="black", pch=shapes)
dev.off()

################################
## FOR LINEAGE BOUNDARIES MAP ##
################################

# Overview map terrain colour
install.packages("dichromat")
library(dichromat)
over.col <- colorRampPalette(c("white", "gray52"))
over.col <- colorRampPalette(c("white", "darkgray"))

#For adding points that are transparant
library("scales") 

## Elevation map focused on Pakistan with alpha
pdf("Map_lineageboundaries_option4.pdf", height=10, width=11) #save as pdf
plot(elevation_withKazakhstan, col=over.col(100), xlim = c(50, 90), ylim = c(20, 45))
plot(Allcountries, add=TRUE, xlim = c(57, 90), ylim = c(18, 48) )
points(dat$Longitude, dat$Latitude, bg=alpha(colors, 0.5), cex=1.2, col = alpha("black", 0.5), pch=shapes)
scalebar(d=500, xy=click(), below = "km", type="bar")
dev.off()

## Elevation map focused on Pakistan without alpha
pdf("Map_lineageboundaries_option5.pdf", height=10, width=11) #save as pdf
plot(elevation_withKazakhstan, col=over.col(100), xlim = c(50, 90), ylim = c(20, 45))
plot(Allcountries, add=TRUE, xlim = c(57, 90), ylim = c(18, 48) )
points(dat$Longitude, dat$Latitude, bg=colors, cex=1.5, pch=shapes)
scalebar(d=500, xy=click(), below = "km", type="bar")
dev.off()

# Plot raster elevation above 1400m
pdf("Map_lineageboundaries_2500Tibetanwolf.pdf", height=10, width=11) #save as pdf
elevation_withPakistan[elevation_withPakistan[] < 1400 ] = NA # check the use of braces to acces values of the raster
elevation_withPakistan[elevation_withPakistan[] < 2500 ] = NA # check the use of braces to acces values of the raster
plot(elevation_withPakistan, zlim = c(0,8337), main = "Filtered raster")
plot(Allcountries, add=TRUE, xlim = c(57, 90), ylim = c(18, 48) )
dev.off()

