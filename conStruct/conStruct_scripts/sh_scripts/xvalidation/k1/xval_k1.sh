#!/bin/bash
#SBATCH --job-name=conStruct_xval_k1
#SBATCH --mem-per-cpu=10G
#SBATCH --ntasks=20
#SBATCH --time=100:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/9.3.0 r/4.2.2

Rscript xval_k1.R
