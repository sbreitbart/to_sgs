#!/bin/bash
#SBATCH --job-name=conStruct_xval_k3
#SBATCH --nodes=1
#SBATCH --time=168:00:00
#SBATCH --cpus-per-task=32 #cores
#SBATCH --mem=125G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/9.3.0 r/4.2.2

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

Rscript xval_k3.R
