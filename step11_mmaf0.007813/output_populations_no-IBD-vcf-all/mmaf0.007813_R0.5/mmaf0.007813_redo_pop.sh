#!/bin/bash
#SBATCH --job-name=populations_mmaf0.007813
#SBATCH --time=10:00:00
#SBATCH --mem-per-cpu=50G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

populations -P ~/step08_no-IBD/output_refmap_no-IBD -O ~/scratch/step11_mmaf0.007813/output_populations_no-IBD-vcf-all/mmaf0.007813_R0.5/ --popmap ~/step08_no-IBD/pop_map3.txt -t 8 --hwe --fstats --plink --structure --vcf-all --genepop --verbose -R 0.5 -r 0.2 --min-maf 0.0078125 --write-single-snp 
