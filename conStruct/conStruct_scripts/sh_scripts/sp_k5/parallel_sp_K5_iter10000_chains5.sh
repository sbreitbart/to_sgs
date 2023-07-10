#!/bin/bash
#SBATCH --job-name=conStruct_k5_spatial_parallel3
#SBATCH --mem-per-cpu=8G
#SBATCH --nodes=1
#SBATCH --ntasks=5
#SBATCH --time=120:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/9.3.0 r/4.2.2

Rscript parallel_sp_K5_iter10000_chains5.R
