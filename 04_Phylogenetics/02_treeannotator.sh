#!/usr/bin/env bash
#SBATCH --job-name=treeannotator
#SBATCH --time 1-24:00:00
#SBATCH --mem=15GB
#SBATCH -p high
#SBATCH -o treeannotator_July1.out
#SBATCH -o treeannotator_July1.err

conda init beastie1

/home/hennelly/miniconda3/envs/beastie1/bin/treeannotator -burninTrees 5000 BNS_PakistanwolvesNov1_finalJuly1_default.trees.txt BNS_PakistanwolvesNov1_finalJuly1_defaultFINALTREE.txt




#!/usr/bin/env bash
#SBATCH --job-name=treeannotator
#SBATCH --time 1-24:00:00
#SBATCH --mem=15GB
#SBATCH -p high
#SBATCH -o treeannotator_Nov1_rerun.out
#SBATCH -o treeannotator_Nov1_rerun.err

conda init beastie1

/home/hennelly/miniconda3/envs/beastie1/bin/treeannotator -burninTrees 1000 BNS_PakistanwolvesNov1_beast.trees.txt BNS_PakistanwolvesNov1_beast.FINALtree.txt



