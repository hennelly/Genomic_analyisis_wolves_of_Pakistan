# Genome-wide Summary Analyses

## Principle Component Analyis using Genotype Likelihoods 
- We used PCangsd (Meisner and Albrecthsen 2018) to inferred the PCA using genotype likelihoods from ANGSD 
 - First we estimated genotype likelihoods using ANGSD [01_ANGSD_GL_forPCAngsd.sh](/02_Genome_wide_Summary/01_ANGSD_GL_forPCAngsd.sh) with keeping reads with least 90% individuals present
 - Run PCAngsd [02_runPCAngsd.sh](/02_Genome_wide_Summary/02_runPCAngsd.sh)

