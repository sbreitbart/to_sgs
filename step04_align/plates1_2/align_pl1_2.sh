#!/bin/bash
#SBATCH --job-name=align_pl1_2
#SBATCH --mem-per-cpu=100G
#SBATCH --time=100:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load bwa/0.7.17

while read ident; do
  bwa mem ~/scratch/genome_Asyriaca/Asclepias_syriaca_v1.0_chromosomes.fa 1.2_R1_${ident}.fq 1.2_R2_${ident}.fq > ../../step04_align/plates1_2/1.2_${ident}.sam
done <unique_ident_fileName.txt
