#!/bin/bash
#SBATCH --job-name=demultiplex_plates1_2_8cores
#SBATCH --time=15:00:00
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc gsl

axe-demux -m0 -z 2 -c -2 -v -t plates1_2_demult_summary_15hr.txt -b PstI-188PlexKey.txt -f 40559-1.2_R1.fastq.gz -r 40559-1.2_R2.fastq.gz -F demult_output_plates1_2_15hr/40559-1.2_R1 -R demult_output_plates1_2_15hr/40559-1.2_R2


