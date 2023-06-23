#!/bin/bash -l
#SBATCH --job-name=pcangsd
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=2-12:00:00
#SBATCH --mem-per-cpu=20GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/Pcangsd_Eurasianwolves_pca2.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/Pcangsd_Eurasianwolves_pca2.err

IN=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/angsdPCA_2023/output/PCAngsd_Eurasianwolves.beagle.gz
OUTDIR=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/angsdPCA_2023/output/

source /home/jdowen/bin/miniconda3/etc/profile.d/conda.sh

conda activate PCAngsd

# Estimate covariance matrix for pca
pcangsd -b ${IN} -e 2 -o ${OUTDIR} -t 2
