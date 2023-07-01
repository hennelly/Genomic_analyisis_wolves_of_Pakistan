# Phylogenetic analyses 

## Create BEAUTI file using BEAST v1.10.4
- I used a Speciation: Birth-Death Process tree prior, relaxed lognormal clock, and a HKY subsitution model. We also ran the analysis for 50 MCMC cycles, sampling every 5,000 and discarding the first 5 million stats as burn-in. See screenshots of the beauti tabs for more information. 
- move into my local cluster ->  `rsync -avz --progress ~/Desktop/BNS_PakistanwolvesNov1_finalJuly1_default.xml hennelly@farm.cse.ucdavis.edu:/group/ctbrowngrp2/hennelly/hennelly/Pakistan_Graywolf_Genomics/Mitogenome/Beast`

## Run Beast
- Running Beast -> [01_beast.sh](/04_Phylogenetics/01_beast.sh) 
- Running treeannotator -> [02_treeannotator.sh](/04_Phylogenetics/02_treeannotator.sh) 
- move log file to see run on Tracer: `scp -r hennelly@farm.cse.ucdavis.edu:/group/ctbrowngrp2/hennelly/hennelly/Pakistan_Graywolf_Genomics/Mitogenome/Beast/BNS_PakistanwolvesNov1_finalJun24_adjsd.log.txt ~/Desktop`

## Plotting mtDNA with a map and elevation 
- plotting mtDNA and elevation ->  [03_plotting_mtDNA_and_elevation.R](/04_Phylogenetics/03_plotting_mtDNA_and_elevation.R) 
- plotting mtDNA lineages on  a map -> [04_plotting_mtDNA_on_map.R](/04_Phylogenetics/04_plotting_mtDNA_on_map.R) 
