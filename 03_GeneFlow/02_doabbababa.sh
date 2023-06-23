#!/bin/bash -l
#SBATCH --job-name=doababa
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=3-12:00:00
#SBATCH --mem-per-cpu=5GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/Dstat_doabbaba.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/Dstat_doabbaba.err

ANC=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/02_Geneflow/Grayfox_mapped2canFam3_withY.fa.gz
REF=/group/ctbrowngrp2/hennelly/hennelly/fastqfiles/DogRefwithY/genomes/canFam3_withY.fa
LIST=/home/hennelly/Chapter3/files/bamlist_for_angsd_dogsallwolves.txt
OUT=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/02_Geneflow/abba_May232023

module load angsd

angsd -out ${OUT} -bam ${LIST} -ref ${REF} -anc ${ANC} -nThreads 2 \
    -GL 1 \
    -trim 0 -C 50 \
    -minMapQ 20 -minQ 20 -minInd 57 \
    -uniqueOnly 1 \
    -doMajorMinor 1 -doMaf 1 \
    -doCounts 1 \
    -doHaploCall 1 \
    -doAbbababa 1 \
    -SNP_pval 1e-6
