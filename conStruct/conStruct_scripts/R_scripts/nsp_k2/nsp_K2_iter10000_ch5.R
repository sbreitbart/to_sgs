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


# # Run non-spatial model
##  k = 2, 10,000 iterations, 5 chains
#       the number of layers (K)
#       the allele frequency data (freqs)
#       the geographic distance matrix (geoDist)
#       the sampling coordinates (coords)

nonspatial_mod_run2 <- conStruct(spatial = FALSE, 
                    K = 2, 
                    freqs = allele_frqs,
                    geoDist = NULL, 
                    coords = coords,
                    prefix = "nsp_K2_iter10000_chains5",
                    n.chains = 5,
                    n.iter = 10000)

print("nonspatial mod run complete")
