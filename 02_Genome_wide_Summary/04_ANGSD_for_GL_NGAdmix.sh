#!/bin/bash -l
#SBATCH --job-name=pcangsd
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=2-12:00:00
#SBATCH --mem-per-cpu=20GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/Pcangsd_allcanids.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/Pcangsd_allcanids.err

# all wolves and dogs 

REF=/group/ctbrowngrp2/hennelly/hennelly/fastqfiles/DogRefwithY/genomes/canFam3_withY.fa
LIST=/home/hennelly/Chapter3/files/bamlist_for_angsd_allcanids.txt
OUT=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/angsdPCA_2023/output/PCAngsd_allcanids

module load angsd

angsd -out ${OUT} -bam ${LIST} -ref ${REF} -nThreads 2 \
    -GL 1 \
    -trim 0 -C 50 -baq 1 \
    -minMapQ 20 -minQ 20 -minInd 64 \
    -uniqueOnly 1 -remove_bads 1 \
    -noTrans 1 -doGlf 2 -doMajorMinor 1 -doMaf 1 \
    -SNP_pval 1e-6

#57 individuals out of 63 is max-missing 0.9



#!/bin/bash -l
#SBATCH --job-name=pcangsd
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=2-12:00:00
#SBATCH --mem-per-cpu=20GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/Pcangsd_allcanids.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/Pcangsd_allcanids.err

# all wolves and dogs 

REF=/group/ctbrowngrp2/hennelly/hennelly/fastqfiles/DogRefwithY/genomes/canFam3_withY.fa
LIST=/home/hennelly/Chapter3/files/bamlist_for_angsd_allcanids.txt
OUT=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/angsdPCA_2023/output/PCAngsd_allcanids

module load angsd

angsd -out ${OUT} -bam ${LIST} -ref ${REF} -nThreads 2 \
    -GL 1 \
    -trim 0 -C 50 -baq 1 \
    -minMapQ 20 -minQ 20 -minInd 64 \
    -uniqueOnly 1 -remove_bads 1 \
    -noTrans 1 -doGlf 2 -doMajorMinor 1 -doMaf 1 \
    -SNP_pval 1e-6

#57 individuals out of 63 is max-missing 0.9




