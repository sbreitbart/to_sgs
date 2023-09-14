#!/bin/bash
#SBATCH --job-name=stairwayplot_rural
#SBATCH --time=5:00:00
#SBATCH --mem-per-cpu=25G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

bash run_rural_usc.blueprint.sh
