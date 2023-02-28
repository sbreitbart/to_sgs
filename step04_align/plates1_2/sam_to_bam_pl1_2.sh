#!/bin/bash
#SBATCH --job-name=sam_to_bam_pl1_2
#SBATCH --mem-per-cpu=100G
#SBATCH --time=4:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load samtools/1.16.1

while read ident; do
  samtools view -S -b 1.2_${ident}.sam > ../../step04_align/plates1_2/bamfiles/1.2_${ident}.bam
done <unique_ident_fileName.txt
