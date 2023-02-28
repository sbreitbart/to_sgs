#!/bin/bash
#SBATCH --job-name=align_pl3_r1
#SBATCH --mem-per-cpu=502G
#SBATCH --time=35:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load bwa/0.7.17

while read ident; do 
  bwa mem ~/scratch/genome_Asyriaca/Asclepias_syriaca_v1.0_chromosomes.fa 3_R1_${ident}.fq 3_R2_${ident}.fq > ../../step04_align/plate3_r1/3_${ident}.sam
done <unique_ident_fileName.txt 
