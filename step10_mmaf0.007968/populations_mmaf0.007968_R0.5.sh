#!/bin/bash
#SBATCH --job-name=populations_mmaf0.007968
#SBATCH --time=3:00:00
#SBATCH --mem-per-cpu=125G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

mkdir output_populations_no-IBD-vcf-all/mmaf0.007968_R0.5

populations -P ~/step08_no-IBD/output_refmap_no-IBD -O output_populations_no-IBD-vcf-all/mmaf0.007968_R0.5/ --popmap pop_map3.txt -t 8 --hwe --fstats --plink --structure --vcf --genepop --verbose -R 0.5 -r 0.2 --min-maf 0.00796812749004 --write-single-snp --vcf-all
