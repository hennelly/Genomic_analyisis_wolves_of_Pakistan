#!/usr/bin/env bash
#SBATCH --job-name=beast
#SBATCH --time 4:00:00
#SBATCH --mem=1GB
#SBATCH -p high
#SBATCH -o beast_June24_adjsd.out
#SBATCH -o beast_June24_adjsd.err

conda init beastie1

beast BNS_PakistanwolvesNov1_finalJun24_adjsd.xml
