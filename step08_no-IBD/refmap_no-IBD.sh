#!/bin/bash
#SBATCH --job-name=ref_map_no-IBD
#SBATCH --time=8:00:00
#SBATCH --mem-per-cpu=250G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

mkdir output_refmap_no-IBD

ref_map.pl --samples sorted_bamfiles_no-IBD --popmap pop_map3.txt --out-path output_refmap_no-IBD
