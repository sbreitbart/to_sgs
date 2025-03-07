#!/bin/bash
#SBATCH --job-name=pops_fstats_filtering_trial12
#SBATCH --time=4:00:00
#SBATCH --mem-per-cpu=256G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

mkdir mmaf0.05_R1_populations_output

populations -P ../output_refmap_run2 -O mmaf0.05_R1_populations_output --popmap ../pop_map2.txt -t 8 --hwe --fstats --plink --structure --vcf --verbose -R 1 -r 0.2 --min-maf 0.05
