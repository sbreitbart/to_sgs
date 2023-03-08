#!/bin/bash
#SBATCH --job-name=sort_bam_pl1_2
#SBATCH --time=10:00:00
#SBATCH --mem-per-cpu=502G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load samtools/1.16.1

while read ident; do
  samtools sort 1.2_${ident}.bam -o 1.2_${ident}_sorted.bam
done < unique_ident_fileName_pl1_2.txt
