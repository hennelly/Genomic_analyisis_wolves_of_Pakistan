#!/bin/bash -l
#SBATCH --job-name=grayfox
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=2-20:00:00
#SBATCH --mem=20GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/ancestralfasta_grayfox.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/ancestralfasta_grayfox.err

BAM=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/angsdPCA_2023/bams_autosomes/AAAAAAAAndeanfox_SRR1066702_subsetonGBS.bam_autosomes.bam

module load angsd

angsd -i ${BAM} -doFasta 1 -doCounts 1 -out /group/ctbrowngrp2/hennelly/hennelly/Chapter3/02_Geneflow/Grayfox_mapped2canFam3_withY
