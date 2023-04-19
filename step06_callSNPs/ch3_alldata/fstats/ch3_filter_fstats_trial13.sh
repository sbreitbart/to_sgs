#!/bin/bash
#SBATCH --job-name=pops_fstats_filtering_trial13
#SBATCH --time=5:00:00
#SBATCH --mem-per-cpu=256G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

populations -P output_refmap_run2 -O output_filtering_fstats_trial13 --popmap pop_map2.txt -t 8 --hwe --fstats --plink --structure --vcf --verbose -R 0.00380228136882 -r 0.2 --min-maf 0.05
