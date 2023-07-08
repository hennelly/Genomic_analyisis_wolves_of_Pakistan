# Genomic analysis of wolves from Pakistan clarifies boundaries among three divergent wolf lineages

<p align="center">
<img src="/04_Phylogenetics/Aligning_and_Filtering/Wolfdrawing.png" length="400" width="400">
</p>

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
- D statistics -> [01_makeancestralfasta.sh](/03_GeneFlow/01_makeancestralfasta.sh) + [02_doabbababa.sh](/03_GeneFlow/02_doabbababa.sh) + [03_dojackknife.sh](/03_GeneFlow/03_dojackknife.sh) +  [04_plot_Dstat_figure.R](/03_GeneFlow/04_plot_Dstat_figure.R)
  
## 04_Phylogenetics
- Infer mitochondrial phylogeny -> [01_beast.sh](/04_Phylogenetics/01_beast.sh) + [02_treeannotator.sh](/04_Phylogenetics/02_treeannotator.sh) 
- Plotting elevation + mtDNA lineage -> [03_plotting_mtDNA_and_elevation.R](/04_Phylogenetics/03_plotting_mtDNA_and_elevation.R) 
- Plotting mtDNA with map in R -> [04_plotting_mtDNA_on_map.R](/04_Phylogenetics/04_plotting_mtDNA_on_map.R)

For script-related questions, please email Dr. Lauren Mae Hennelly at lauren.hennelly@sund.ku.dk

