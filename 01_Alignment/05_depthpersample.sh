#!/usr/bin/env bash
#SBATCH --job-name=depth
#SBATCH -c 1
#SBATCH --time 11:00:00
#SBATCH --mem-per-cpu 1G
#SBATCH -o /home/crq857/projects/Chapter3/slurmout/depthpersample_%A_%a.out
#SBATCH -e /home/crq857/projects/Chapter3/slurmout/depthpersample_%A_%a.err
#SBATCH --array=1-84%20

echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID

sample=$(sed "${SLURM_ARRAY_TASK_ID}q;d" /home/hennelly/Chapter3/files/bamlist2.txt)
echo ${sample}

module load samtools

samtools depth /group/ctbrowngrp2/hennelly/hennelly/Chapter3/Alignment/bamfiles_WGSsubset/${sample}  |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > /group/ctbrowngrp2/hennelly/hennelly/Chapter3/Depth/depth_${sample}.txt
