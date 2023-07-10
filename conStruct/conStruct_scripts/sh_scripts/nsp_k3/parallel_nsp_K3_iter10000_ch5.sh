#!/bin/bash
#SBATCH --job-name=conStruct_k3_nonspatial
#SBATCH --mem-per-cpu=8G
#SBATCH --nodes=1
#SBATCH --ntasks=5
#SBATCH --time=48:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/9.3.0 r/4.2.2

Rscript parallel_nsp_K3_iter10000_ch5.R
