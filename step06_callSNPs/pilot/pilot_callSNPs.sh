#!/bin/bash
#SBATCH --job-name=ref_map_pilot
#SBATCH --time=5:00:00
#SBATCH --mem-per-cpu=502G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

ref_map.pl --samples bamfiles --popmap pop_map_pilot.txt --out-path output
