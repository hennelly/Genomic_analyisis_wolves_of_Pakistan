# Genomic analysis of wolves from Pakistan clarifies boundaries among three divergent lineages

## Sample List 
- Will upload when paper is accepted

## 01_Alignment_SNPCalling
- adaptor trimming -> [01_Adapter_trimming.sh](/01_Alignment/01_Adapter_trimming.sh)
- alignment to the dog genome -> [02_Alignment.sh](/01_Alignment/02_Alignment.sh)
- subset WGS bams to coordinates of GBS -> [03_mergebams.sh](/01_Alignment/03_mergeGBSbams.sh) + [04_subsetWGSonGBS.sh](/01_Alignment/04_subsetWGSonGBS.sh)
  
## 02_Genome-wide_Summary_Analyses
- PCA -> [01_ANGSD_GL_forPCAngsd.sh](/02_Genome_wide_Summary/01_ANGSD_GL_forPCAngsd.sh) + [02_runPCAngsd.sh](/02_Genome_wide_Summary/02_runPCAngsd.sh) + [03_plotPCA.sh](/02_Genome_wide_Summary/03_plotPCA.sh)
- Individual admixture proportions -> [04_ANGSD_for_GL_NGAdmix.sh](/02_Genome_wide_Summary/04_ANGSD_for_GL_NGAdmix.sh) + [05_runNGSadmix.sh](/02_Genome_wide_Summary/05_runNGSadmix.sh) + [06_plot_NGSadmix.sh](/02_Genome_wide_Summary/06_plot_NGSadmix.sh)
## 03_Geneflow

## 04_Phylogenetics
