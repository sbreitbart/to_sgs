#!/bin/bash
#SBATCH --job-name=ref_map_ch3_run2
#SBATCH --time=3:00:00
#SBATCH --mem-per-cpu=256G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

ref_map.pl --samples sorted_bamfiles --popmap pop_map2.txt --out-path output_refmap_run2
