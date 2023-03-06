#!/bin/bash
#SBATCH --job-name=stats_pl1_2
#SBATCH --time=0:30:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load bamtools/2.5.1

while read ident; do
  bamtools stats -in 1.2_${ident}.bam > 1.2_${ident}_stats.txt
done < unique_ident_fileName.txt
