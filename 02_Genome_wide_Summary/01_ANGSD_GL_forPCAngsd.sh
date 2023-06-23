#!/bin/bash -l
#SBATCH --job-name=pcangsd
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=2-12:00:00
#SBATCH --mem-per-cpu=20GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/Pcangsd_Eurasianwolves.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/Pcangsd_Eurasianwolves.err

# Eurasian wolves  

REF=/group/ctbrowngrp2/hennelly/hennelly/fastqfiles/DogRefwithY/genomes/canFam3_withY.fa
LIST=/home/hennelly/Chapter3/files/bamlist_for_angsd_Eurasianwolves.txt
OUT=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/angsdPCA_2023/output/PCAngsd_Eurasianwolves

module load angsd

angsd -out ${OUT} -bam ${LIST} -ref ${REF} -nThreads 2 \
    -GL 1 \
    -trim 0 -C 50 -baq 1 \
    -minMapQ 20 -minQ 20 -minInd 40 \
    -uniqueOnly 1 -remove_bads 1 \
    -noTrans 1 -doGlf 2 -doMajorMinor 1 -doMaf 1 \
    -SNP_pval 1e-6

# exclude reads with excessive mismatches (-C 50)
# remove transitions (-noTrans 1)
# remove reads with mapping quality less than 20 (-minMapQ20)
# retain SNPs with at least 90% individuals present (>40 out of 45 total, -minInd 40)
# remove reads with base quality score less than 20 (-minQ 20)
