# Alignment and SNP Calling

## 1.0 Alignment to the Dog Genome
 - Trimming adapters from GBS data -  [01_Adapter_trimming.sh](/01_Alignment/01_Adapter_trimming.sh)
 - Alignment to the Dog Genome using bwa - [02_Alignment.sh](/01_Alignment/02_Alignment.sh)
 
## 2.0 Subset GBS coordinates on whole genome sequence data 
- First, I need to merge all the GBS bam files to grab all coordinates, then convert this merged GBS bam file to a bed file and sort the bed file - [03_mergebams.sh](/01_Alignment/03_mergeGBSbams.sh)
- Second, I will then subset the WGS bam files to match the coordinates within the GBS files - [04_subsetWGSonGBS.sh](/01_Alignment/04_subsetWGSonGBS.sh)

