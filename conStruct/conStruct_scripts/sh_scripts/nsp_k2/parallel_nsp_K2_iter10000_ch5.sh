#!/bin/bash
#SBATCH --job-name=conStruct_k2_nonspatial
#SBATCH --mem-per-cpu=4096M
#SBATCH --nodes=1
#SBATCH --ntasks=5
#SBATCH --time=24:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/9.3.0 r/4.2.2

Rscript parallel_nsp_K2_iter10000_ch5.R
