## Load libraries & functions
library(Matrix)
library(parallel)
library(here)
library(tidyverse)
library(magrittr)
library(conStruct)
library(fields)

print("loaded libraries")

# import allele frequencies from txt file that contains a subset
# because there were initially more samples than loci
allele_frqs <- conStruct::structure2conStruct(
  infile = "../populations.structure.txt",
  onerowperind = FALSE,
  start.loci = 3,
  start.samples = 2,
  missing.datum = -9,
  outfile = "construct_data_20230612")

head(allele_frqs)

## Load in other data
### Geographic sampling coordinates
coords <- read.csv("../conStruct_coords.csv") %>%
  dplyr::select(-X) %>%
  as.matrix()

print("head(coords)")
head(coords)



# calculate pairwise great-circle distance between sampling coordinates
distances <- fields::rdist.earth(coords,
                            # distances in km
                            miles = FALSE)
print("(distances)")
print(distances)
dim(distances)

distances <- Matrix::forceSymmetric(distances)
distances <- as.matrix(distances)

# Run cross-validation

# to run a cross-validation analysis
# you have to specify:
#       the numbers of layers you want to compare (K)
#       the allele frequency data (freqs)
#       the geographic distance matrix (geoDist)
#       the sampling coordinates (coords)

##  k = 4, 10,000 iterations
 x.validation(train.prop = 0.7,
                         n.reps = 8,
                         K = 4,
                         freqs = allele_frqs,
                         data.partitions = NULL,
                         geoDist = distances,
                         coords = coords,
                         prefix = "xval",
                         n.iter = 10000,
                         make.figs = TRUE,
                         save.files = TRUE,
                         parallel = TRUE,
                         cores = 8)
                         cores = parallel::detectCores(),
			 n.nodes = parallel::detectCores()) 

print("xvalidation complete")
