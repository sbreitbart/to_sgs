#!/bin/bash
#SBATCH --job-name=stairwayplot
#SBATCH --time=10:00:00
#SBATCH --mem-per-cpu=25G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

bash run_20230908.blueprint.sh
