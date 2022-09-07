#!/bin/bash
#SBATCH --job-name=trim_w_perl_plate3_run2
#SBATCH --mem-per-cpu=502G
#SBATCH --time=10:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

perl batch_trim.pl KEYFILE_plate3A.txt
