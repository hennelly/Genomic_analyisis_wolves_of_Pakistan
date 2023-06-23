#!/bin/bash -l
#SBATCH --job-name=NGSadmix_K
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=1-12:00:00
#SBATCH --mem-per-cpu=25GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/NGSadmix_allcanids_May30_corrected_%A_%a.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/NGSadmix_allcanids_May30_corrected_%A_%a.err
#SBATCH --array=1-9

K=$(sed "${SLURM_ARRAY_TASK_ID}q;d" /home/hennelly/Chapter3/files/NGSAdmix_order.txt | cut -f1)

IN=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/angsdPCA_2023/output/PCAngsd_allcanids_May30_corrected.beagle.gz

/home/hennelly/bin/NGSadmix -likes ${IN} -K ${K} -o /group/ctbrowngrp2/hennelly/hennelly/Chapter3/03_Structure/NGSadmix_allcanids_May30_corrected_K${K} -P 10
