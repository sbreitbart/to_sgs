#!/bin/bash
#SBATCH --job-name=pops_fstats_no-IBD_mmaf0.0076
#SBATCH --time=30:00:00
#SBATCH --mem-per-cpu=250G
#SBATCH --account=def-wagnerh1
#SBATCH --mail-user=sophie.breitbart@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load stacks/2.62

for min_maf in 0.007662
do
	for R in 0.5 0.75 1
	do
		mkdir output_populations_no-IBD/mmaf"$min_maf"_R"$R"
		populations -P output_refmap_no-IBD -O output_populations_no-IBD/mmaf"$min_maf"_R"$R"/ --popmap pop_map3.txt -t 8 --hwe --fstats --plink --structure --vcf --verbose -R "$R" -r 0.2 --min-maf "$min_maf" --write-single-snp
	done
done
