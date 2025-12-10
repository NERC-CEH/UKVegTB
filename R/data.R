#' A phylogenetic tree for the UKVegTB taxa
#'
#' A phylogenetic tree in the Newick format, formed from taxa present in the phylo_taxon_name column in `UKVegTB::phylo_taxa_lookup`, where available.
#' 
#' \code{phylo_tree} 
#'
#' @format A string containing the phylogentic tree in the Newick format.
"phylo_tree"

#' Taxa lookup
#'
#' A lookup between the recommended taxa as present in `UKVegTB::taxonomic_backbone` and the taxon names present in the Newick `UKVegTB::phylo_tree` phylogenetic tree object.
#' At present `r t(as.matrix(table(UKVegTB::phylo_taxa_lookup$phylo)))[[1, "TRUE"]]` taxa out of `r nrow(UKVegTB::taxonomic_backbone)` are present in the tree.
#' The phylo_taxon_name are produced by reducing varieties and subspecies to the species rank, and removing strata and ecological group suffixes.
#' 
#'
#' \code{phylo_taxa_lookup} 
#'
#' @format A data frame with `r nrow(UKVegTB::phylo_taxa_lookup)` rows and `r ncol(UKVegTB::phylo_taxa_lookup)` columns, the definitions of which are:
#' \describe{
#'   \item{TVK}{The UKSI taxon version key associated with the taxon_name.}
#'   \item{taxon_name}{The recommended taxon name as present in the taxon_name column of `UKVegTB::taxonomic_backbone` and the recommended_taxon_name column of `UKVegTB::taxa_lookup`.}
#'   \item{search_name}{The taxon name used to search for OTL data, and as present in the `UKVegTB::phlyo_tree` object.}
#'   \item{matched_name}{The OTL name matched to the search_name.}
#'   \item{phylo}{A boolean representing whether each taxon is present in the `UKVegTB::phlyo_tree` object.}
#'   \item{ottid}{The OTL id associated with the matched name.}
#' }
"phylo_taxa_lookup"

#' Taxa lookup
#'
#' A lookup between the recommended taxa as present in `UKVegTB::taxonomic_backbone` and associated synonymous taxon concepts present in the UKSI.
#'
#' \code{taxa_lookup} 
#'
#' @format A data frame with `r nrow(UKVegTB::taxa_lookup)` rows and `r ncol(UKVegTB::taxa_lookup)` columns, the definitions of which are:
#' \describe{
#'   \item{informal_group}{The informal group of the taxon.}
#'   \item{taxon_name}{The taxon name of the synonymous taxon concept associated with the recommended_taxon_name.}
#'   \item{rank}{The taxonomic rank of the taxon.}
#'   \item{qualifier}{The qualifier of the taxon.}
#'   \item{authority}{The authority responsible for the description of the taxon.}
#'   \item{full_name}{The full name of the taxon, formed from the combination of the taxon_name and qualifier.}
#'   \item{TVK}{The UKSI taxon version key associated with the taxon_name.}
#'   \item{recommended_taxon_name}{The recommended taxon name for the taxon concept in the taxon_name column.}
#'   \item{recommended_rank}{The taxonomic rank of the recommended_taxon_name.}
#'   \item{recommended_qualifier}{The qualifier of the recommended_taxon_name}
#'   \item{recommended_authority}{The authority responsible for the description of the recommended_taxon_name.}
#'   \item{recommended_full_name}{The full name of the recommended_taxon_name, formed from the combination of the recommended_taxon_name and recommended_qualifier.}
#'   \item{recommended_TVK}{The UKSI taxon version key associated with the recommended_taxon_name.}
#' }
"taxa_lookup"

#' Taxonomic Backbone
#' 
#' The taxonomic backbone used in RMAVIS. Formed by selecting the recommended taxa from the following informal groups:
#' "alga", "chromist", "clubmoss", "conifer", "fern", "flowering plant", "ginkgo", "hornwort", "horsetail", "lichen", "liverwort", "moss", "quillwort", and "stonewort"
#' in version 20250703a of the UKSI, then retrieving the parent taxa.
#' 
#'
#' \code{taxonomic_backbone} 
#'
#' @format A data frame with `r nrow(UKVegTB::taxonomic_backbone)` rows and `r ncol(UKVegTB::taxonomic_backbone)` columns, the definitions of which are:
#' \describe{
#'   \item{TVK}{}
#'   \item{taxon_name}{}
#'   \item{rank}{}
#'   \item{qualifier}{}
#'   \item{authority}{}
#'   \item{full_name}{}
#'   \item{informal_group}{}
#'   \item{Unranked}{}
#'   \item{Domain}{}
#'   \item{Kingdom}{}
#'   \item{Subkingdom}{}
#'   \item{Infrakingdom}{}
#'   \item{Division}{}
#'   \item{Subdivision}{}
#'   \item{Phylum}{}
#'   \item{Subphylum}{}
#'   \item{Infraphylum}{}
#'   \item{Superclass}{}
#'   \item{Class}{}
#'   \item{Subclass}{}
#'   \item{Superorder}{}
#'   \item{Order}{}
#'   \item{Suborder}{}
#'   \item{Superfamily}{}
#'   \item{Family}{}
#'   \item{Subfamily}{}
#'   \item{Family aggregate}{}
#'   \item{Tribe}{}
#'   \item{Genus}{}
#'   \item{Genus aggregate}{}
#'   \item{Subgenus}{}
#'   \item{Section}{}
#'   \item{Subsection}{}
#'   \item{Species group}{}
#'   \item{Series}{}
#'   \item{Species aggregate}{}
#'   \item{Species sensu lato}{}
#'   \item{Generic hybrid}{}
#'   \item{Species}{}
#'   \item{Species pro parte}{}
#'   \item{Species hybrid}{}
#'   \item{Subspecies}{}
#'   \item{Subspecies hybrid}{}
#'   \item{Subspecies aggregate}{}
#'   \item{Nothosubspecies}{}
#'   \item{Microspecies}{}
#'   \item{Cultivar}{}
#' }
"taxonomic_backbone"
