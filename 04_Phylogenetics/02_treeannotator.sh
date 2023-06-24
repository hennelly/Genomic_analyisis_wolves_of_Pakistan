#!/usr/bin/env bash
#SBATCH --job-name=treeannotator
#SBATCH --time 1-24:00:00
#SBATCH --mem=15GB
#SBATCH -p high
#SBATCH -o treeannotator_Jun24.out
#SBATCH -o treeannotator_Jun24.err
#SBATCH --exclude=c10-96,c10-69,c11-76,c11-93,c11-86

conda init beastie1

/home/hennelly/miniconda3/envs/beastie1/bin/treeannotator -burninTrees 5000 BNS_PakistanwolvesNov1_finalJun24.trees.txt BNS_PakistanwolvesNov1_Jun24beastFINALTREE.txt
