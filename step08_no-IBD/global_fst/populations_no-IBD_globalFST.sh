#!/bin/bash
#SBATCH --job-name=pops_fstats_no-IBD_globalFST
#SBATCH --time=10:00:00
#SBATCH --mem-per-cpu=250G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

mkdir global_fst

populations -P output_refmap_no-IBD -O global_fst --vcf -t 8 -R 0.75 -r 0.2 --min-maf 0.05 --write-single-snp
