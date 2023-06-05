#!/bin/bash
#SBATCH --job-name=pops_fstats_filtering_set4
#SBATCH --time=40:00:00
#SBATCH --mem-per-cpu=250G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

for min_maf in 0.007662 0.01 0.02 0.03 0.04 0.05
do
	for R in 0.1 0.2 0.3 0.4 0.5
	do
		mkdir round4/mmaf"$min_maf"_R"$R"
		populations -P output_refmap_run2 -O round4/mmaf"$min_maf"_R"$R"/ --popmap pop_map2.txt -t 8 --hwe --fstats --plink --structure --vcf --verbose -R "$R" -r 0.2 --min-maf "$min_maf" --write-single-snp
	done
done
