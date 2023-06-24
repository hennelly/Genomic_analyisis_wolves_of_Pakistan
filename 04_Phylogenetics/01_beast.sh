#!/usr/bin/env bash
#SBATCH --job-name=beast
#SBATCH --time 4:00:00
#SBATCH --mem=1GB
#SBATCH -p high
#SBATCH -o beast_June24.out
#SBATCH -o beast_June24.err

conda init beastie1

beast BNS_PakistanwolvesNov1_finalJun24.xml
