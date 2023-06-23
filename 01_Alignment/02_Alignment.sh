#!/bin/bash -l
#SBATCH --job-name=Tibetanmastiffs
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --array=1-7 #number of samples you want to trim
#SBATCH --time=2-16:00:00
#SBATCH --mem-per-cpu=15GB
#SBATCH -p high
#SBATCH -o /home/hennelly/Chapter2_revision/slurmout/Tibetanmastiffs_%A_%a.out
#SBATCH -e /home/hennelly/Chapter2_revision/slurmout/Tibetanmastiffs_%A_%a.err

echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
NAME=$(sed "${SLURM_ARRAY_TASK_ID}q;d" /home/hennelly/Chapter2_revision/lists/name_trimsamples.txt)

REF=/group/ctbrowngrp2/hennelly/hennelly/fastqfiles/DogRefwithY/genomes/canFam3_withY.fa

# load the bwa and samtools modules
module load bwa
module load samtools
module load deprecated/java

bwa mem -R "@RG\tID:SRR11085390\tSM:SRR11085390" ${REF} ${NAME}_1_trimmed.fq.gz ${NAME}_2_trimmed.fq.gz | \
samtools view -q 10 -h -b - | \
samtools sort -o ${NAME}_Tibetanmastiff.bam -

samtools sort ${NAME}_Tibetanmastiff.bam | \
samtools view -f 0x2 -o temp/${NAME}_Tibetanmastiff_sorted_proper.bam -

# mark duplicates 
java -jar /group/ctbrowngrp2/hennelly/hennelly/bin/picard.jar MarkDuplicates \
      I=temp/${NAME}_Tibetanmastiff_sorted_proper.bam \
      O=sorted/${NAME}_Tibetanmastiff_sorted_proper_nodups.bam \
      M=${NAME}_Tibetanmastiff_metrics.txt

# index
samtools index sorted/${NAME}_Tibetanmastiff_sorted_proper_nodups.bam

java -jar /group/ctbrowngrp2/hennelly/hennelly/bin/picard.jar AddOrReplaceReadGroups INPUT=sorted/${NAME}_Tibetanmastiff_sorted_proper_nodups.bam OUTPUT=sorted/${NAME}_Tibetanmastiff_sorted_proper_nodups_readgroup.bam VALIDATION_STRINGENCY=SILENT RGID=${NAME} RGLB=1 RGPL=Thermo RGPU=NULL RGSM=${NAME}

samtools index sorted/${NAME}_Tibetanmastiff_sorted_proper_nodups_readgroup.bam
