#!/bin/bash
#SBATCH --job-name=clean_pl3_r2
#SBATCH --time=10:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62
module load gcc/9.3.0


process_shortreads -p ~/scratch/plate3_run2_fastq/ -o ~/scratch/step03_clean/plate3_r2/ -c -t 110
