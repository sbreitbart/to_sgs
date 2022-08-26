#!/bin/bash
#SBATCH --job-name=demultiplex_plate3_run2_15hr
#SBATCH --time=15:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc gsl

axe-demux -m0 -z 2 -c -2 -v -t plate3_run2_demult_summary_15hr.txt -b PstI-Plate1Key.txt -f 40559-3A_R1.fastq.gz -r 40559-3A_R2.fastq.gz -F demult_output_plate3_run2_15hr/40559-3A_R1 -R demult_output_plate3_run2_15hr/40559-3A_R2


