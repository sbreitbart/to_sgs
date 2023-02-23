#!/bin/bash
#SBATCH --job-name=fastp_pl3_r2
#SBATCH --time=3:00:00
#SBATCH --mem-per-cpu=502G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load fastp/0.23.1

while read ident; do
  fastp -i 40559-3A_R1_${ident}_R1_val_1.fq -I 40559-3A_R2_${ident}_R2_val_2.fq -q 20 -A --length_limit 110 -o ../../step03_clean/plate3_r2/3A_R1_${ident}.fq -O ../../step03_clean/plate3_r2/3A_R2_${ident}.fq
done <unique_ident_fileName.txt
