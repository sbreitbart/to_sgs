#!/bin/bash
#SBATCH --job-name=conStruct_k2_spatial
#SBATCH --mem-per-cpu=10GB
#SBATCH --time=150:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/9.3.0 r/4.2.2

Rscript sp_K2_iter10000_ch5.R
