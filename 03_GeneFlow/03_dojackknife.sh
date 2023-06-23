#!/bin/bash -l
#SBATCH --job-name=Dstat_doabbaba_JK
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=3-12:00:00
#SBATCH --mem-per-cpu=5GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter3/slurmout/Dstat_doabbaba_JK.out
#SBATCH -e /home/hennelly/Chapter3/slurmout/Dstat_doabbaba_JK.err

module load angsd
unset CONDA_EXE
module load R/4.2.2
Rscript /share/apps/angsd-0.934/R/jackKnife.R file=/group/ctbrowngrp2/hennelly/hennelly/Chapter3/02_Geneflow/abba_May232023.abbababa indNames=/home/hennelly/Chapter3/files/bamlist_for_angsd_dogsallwolves.txt outfile=abba_May242023.abbaJKout

## Post processing 

grep "SRR13985171_Indianwolf_subsetonGBS.bam_autosomes.bam" abba_May242023.abbaJKout.txt > abba_May242023.abbaJKout_IndianGujarat.txt

## Bring to local computer 

scp -r hennelly@farm.cse.ucdavis.edu:/home/hennelly/Chapter3/scripts/abba_May242023.abbaJKout_IndianGujarat.txt ~/Desktop

## Himalayan wolf 
grep "SRR7107906_Tibetan_subsetonGBS.bam_autosomes.bam" abba_May242023.abbaJKout.txt > abba_May242023.abbaJKout_Tibetan.txt
## Bring to local computer 

scp -r hennelly@farm.cse.ucdavis.edu:/home/hennelly/Chapter3/scripts/abba_May242023.abbaJKout_Tibetan.txt ~/Desktop

