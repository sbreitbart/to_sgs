## Load libraries & functions

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
print("head(distances)")
head(distances)


# # Run spatial model
##  k = 3, 10,000 iterations, 5 chains
#       the number of layers (K)
#       the allele frequency data (freqs)
#       the geographic distance matrix (geoDist)
#       the sampling coordinates (coords)

spatial_mod_run3 <- conStruct(spatial = TRUE, 
                    K = 3, 
                    freqs = allele_frqs,
                    geoDist = distances, 
                    coords = coords,
                    prefix = "sp_K3_iter10000_chains5",
                    n.chains = 5,
                    n.iter = 10000,
		    cores = 5)

print("spatial_mod_run3 complete")
