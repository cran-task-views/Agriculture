
# Proposed CRAN Task View: Agriculture

Agriculture encompasses a broad breadth of disciplines. Many, many package in base R and contributed packages are useful to agricultural researchers. For that reason, this is not exhaustive list of packages useful to agricultural research. This proposed CRAN task view is intended to cover major packages that in most cases, have been developed to support agricultural research and analytical needs. 

Note that some of these packages are on CRAN and others are on GitHub, Bioconductor, or R-forge. 

If you think that some package is missing from the list, please let us know. 

## Core Packages with general applications

### Agricultural & landuse databases 
  
  Data from the United States Department of Agriculture's National Agricultural Statistical Service '[Quick Stats](https://www.nass.usda.gov/Quick_Stats/)' web API can be accessed with [rnassqs][] or with [tidyUSDA][], which also offers some mapping capabilities. The USDA's [Cropland Data Layer](https://nassgeodata.gmu.edu/CropScape/) API can be accessed with [CropScapeR][] and [cdlTools][] provides various utility functions for processing CDL data. The package [rusda][] provides an interface to access the USDA-ARS Systematic Mycology and Microbiology Laboratory (SMML)'s [four databases](Literature and the Nomenclature database): Fungus-Host Distributions, Specimens, Literature and the Nomenclature database. USDA's Agricultural Resource Management Survey ([ARMS](https://www.nass.usda.gov/Surveys/Guide_to_NASS_Surveys/Ag_Resource_Management/)) data API can be accessed with [rarms][]. The USDA's Livestock Mandatory Reporting data API can be accessed with [usdampr][]. [FAOSTAT][] and [faobulk][] can be used to access data from the [FAOSTAT Database](https://www.fao.org/faostat/en/#home) of the Food and Agricultural Organization (FAO) of the United Nations. 
  
  [FedData][] provides access to geospatial data from The Soil Survey Geographic ([SSURGO](https://www.nrcs.usda.gov/wps/portal/nrcs/detail/soils/survey/?cid=nrcs142p2_053627)) database, the Global Historical Climatology Network ([GHCN](https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily)), the Daymet gridded estimates of daily weather parameters for North America, the [International Tree Ring Data Bank](https://catalog.data.gov/dataset/international-tree-ring-data-bank-itrdb), and the [National Land Cover Database](https://www.usgs.gov/centers/eros/science/national-land-cover-database#overview). The NOAA database API can be acccessed with  [rnoaa][].
  
### Agricultural data sets
  
  [Agridat][] consists of a very large collection of agricultural data sets and example analyses; the package contains a vignette detailing additional data sets and extensive resources to support agricultural analysis. [agritutorial][] provides a collection of agricultural data sets and analysis with particular attention to crop experiments. On GitHub, the repository [agroBioData][] houses a collection of data sets supporting agriculture and applied biology (note that this is a collection of CSV files, not a package). The [soybean nested associated mapping population data set](https://pubmed.ncbi.nlm.nih.gov/28724064/) can be accessed via [SoyNAM][].  [simplePhenotypes][] can be used for simulating pleiotropic, linked and epistatic Phenotypes. USGS county data on fertilizer sales can be accessed with [ggfertilizer][]. The FAOSTAT data set collection on the Food and Agriculture Biomass Input–Output model (FABIO) is available through [fabio][] and described more in detail in [Bruckner (2019)](https://pubs.acs.org/doi/10.1021/acs.est.9b03554). The R-forge subversion repository ['cropcc'](https://r-forge.r-project.org/scm/viewvc.php/pkg/?root=cropcc) hosts several R packages with climate change/cropping data set. Additionally, many  of the agriculture-focused packages listed in this guide also include data sets to illustrate their functionality (e.g. [BGLR][], [agricolae][], [FW][]).
 
### General analytical packages supporting agricultural research
  
  The package [nlraa][] provides nonlinear regression functions specifically for agricultural applications. [agriCensData][] is a flexible package for working with censored data (e.g. time to flowering, instrumentation values below the detection limit, disease scoring). 

## Discipline-specific packages

### Agricultural economics

  The task views for [Econometrics](https://cran.rstudio.com/web/views/Econometrics.html), [Empirical Finance](https://cran.r-project.org/web/views/Finance.html), and [TimeSeries](https://cran.r-project.org/web/views/TimeSeries.html) provide information on packages and tools relevant to agriculture economics.

### Agronomic trials

#### Experimental design 
  
  The package [agricolae][] provides extensive resources for the planning and analysis of planned field experiments. The CRAN task for [ExperimentalDesign](https://cran.rstudio.com/web/views/Econometrics.html) provide additional information on experimental design for a wide variety of research problems. [desplot][] is for plotting maps of agricultural trials laid out in grids. 
  
#### General analysis
  
  The package [agricolae][] contains functions for analyzing many common designs in agriculture trials such as split plot, lattice, Latin square and some additional functions such AMMI and AUDPC calculations. [statgenSTA][] has functions for single trial analysis with and without spatial components. The proprietary software [asreml](https://www.vsni.co.uk/software/asreml) provides an R version of their mixed model fitting functions for field trial analysis (note this is not open source and also requires an annual license). CRAN also contains an add-on package [asremlPlus][] that provides several accessory functions to asreml. [INLA][] provides tools for Bayesian inference of latent Gaussian models. It was developed specifically for agriculture and contains functions for modelling spatial variation in field experiments. [SpATS][] can be used to adjust for field spatial variation using [p-splines](http://dx.doi.org/10.1002/bimj.202100212).
  
  
#### High throughput phenotyping (HTP)
  
  [statgenHTP][] is for analyzing data from HTP platform experiments, with some functions specifically designed to work with the proprietary software [asreml](https://www.vsni.co.uk/software/asreml).
  
### Animal science

  [usdampr][] provides access to the USDA's Livestock Mandatory Reporting API. Many of the genetic packages described in this resource can also be applied to animal system.
    
### Breeding & quantitative genetics

  See the [Phylogenetics CRAN task view](https://cran.r-project.org/web/views/Phylogenetics.html) describing R packages for taxonomy, community ecology (including microbiome work) and of course, phylogenetics. In addition, the R package repository [Bionconductor](https://www.bioconductor.org/) provides bioinformatics tools for the processing of high-throughput genomic data. [lmDiallel] provides service functions for analysing data sets obtained from diallel experiments, as described in [Onofri 2020](https://doi.org/10.1007%2Fs00122-020-03716-8). [plant breeding][] (available on R-forge: `install.packages("plantbreeding", repos="http://R-Forge.R-project.org")`) provides many convenience functions for working with populations and designs common in plant breeding including dialleles, line testers, augmented trials, the Carolina design, and more. [st4gi][] provides several general functions for genetic improvement of crops. Also, please see the subsection on "genotype-by-environment interactions" for packages integrating environmental and genomic data in an analytical framework. 
  
#### Linkage mapping & QTL analysis
  
  There are two notable and long-standing packages: (1) [onemap][], providing MapMaker/EXP like performance and extended functionality, and (2) [qtl][] providing standard functionality for qtl mapping and  accessory functions for simulating crosses. [ASMap][] is for fast linkage mapping with the algorithm 'MSTmap'. [MapRtools][] is another linkage mapping package. A existing linkage map can be visualized with [LinkageMapView][]. For polyploids, the packages [mappoly][] and [polymapR][] can be used for linkage mapping and the packages [qtlpoly][] and [polyqtlR][] can be used for qtl estimation. [diaQTL][] is for QTL and haplotype analysis of diallel populations (diploid and autotetraploid). [statgenMPP][] can conduct QTL mapping in multi-parent populations.  
  
#### GWAS
  
  Genome-wide association study analysis can be conducted with [statgenGWAS][]. GWAS models across very large number of SNPs or observations can be estimated with [rMVP][] and [megaLMM][]. Functions for autotetraploids are provided by [GWASpoly][], and these functions also work in diploid species. [StageWise][] provides functions to conduct a 2-stage GWAS when the underlying phenotypic data are from multiple field trials. Variable selection for ultra-large dimensional GWAS data sets can be done with [bravo][], which implements a Bayesian algorith, selection
of variables with embedded screening [SVEN](https://arxiv.org/abs/2006.07561)
  
#### Genomic prediction
  
  Packages supporting genetic prediction using mixed models augmented with pedigree or genetic marker data include [sommer][], [rrBLUP][], [BGLR][], [lme4gs][], [lme4qtl][], [pedigreemm][], [qgtools][], [cpgen][] and the licensed software [asreml](https://www.vsni.co.uk/software/asreml). Many of these packages have built-in functionality for data preparation steps including data imputation and calculation of the relationship matrices. [AGHmatrix][] provides extensive options for calculating pedigree and genomic (additive and dominance) relationship matrices and [statgenIBD][] can calculate IBD probabilities for biparental, three and four-way crosses. [breedR][] is a general purpose package for performing quantitative genetic analyses. For polyploids, [polyBreedR][] provides convenience functions to facilitate the use of genome-wide markers for breeding autotetraploid species, and its functionality also extends to diploids. 
  
### Crop growth models & crop modelling

  The [apsimx][] package has functions to read, inspect, edit and run files for APSIM "Next Generation" (json) and APSIM "Classic" (xml). Files with an `.apsim` extension correspond to APSIM Classic, the files with an `.apsimx` extension correspond to APSIM Next Generation. [rapsimng][] works with Next Generation APSIM files. [DSSAT][] provides a comprehensive R interface to the Decision Support System for Agrotechnology Transfer Cropping Systems Model (DSSAT-CSM) documented by [Jones (2003)](https://doi.org/10.1016/S1161-0301(02)00107-7). This package provides cross-platform functions to read and write input files, run DSSAT-CSM, and read output files.
  
  [Meteor][] provides a set of functions for weather and climate data manipulation to support crop and crop disease modeling.
  
  [phenorice][] is an R implementation of the [phenorice model](http://dx.doi.org/10.1016/j.rse.2017.03.029) for remote sensing of rice crop production. [phenoriceR][] provides helper functions for processing data from the phenorice model. [Recocrop][] estimates environmental suitability for plants using a limiting factor approach for plant growth following [Hackett (1991)](doi:10.1007/BF00045728). [Rquefts][] provides an implementation of the QUEFTS (Quantitative Evaluation of the Native Fertility of Tropical Soils) model ([Janssen 1990](https://doi.org/10.1016%2F0016-7061%2890%2990021-Z)). [Rwofost] is an implementation of the WOFOST ("World Food Studies") crop growth model ([De Wit 2019](https://doi.org/10.1016%2Fj.agsy.2018.06.018)).
  

### Entomology

  [hnp][] Generates half-normal plots with simulation envelopes using different diagnostics from a range of different fitted models. A few example datasets are included. The package [agriCensData][] provides functions for dealing with censored data. In addition, the [survival CRAN Task View](https://cran.microsoft.com/snapshot/2022-03-27/web/views/Survival.html) list CRAN resources for working with censored data. 
    
### Food science

  For packages supporting sensory studies, see the [Psychometrics CRAN task view](https://cran.r-project.org/web/views/Psychometrics.html). [NutrienTrackeR][] provides convenience functions for calculating nutrient content (macronutrients and micronutrients) of foods using food composition data from several reference databases, including: 'USDA' (United States), 'CIQUAL' (France), 'BEDCA' (Spain) and 'CNF' (Canada). 

### Genotype-by-environment interactions
  
  [statgenGxE][] has several functions for handling various analytical approaches for addressing genotype-by-environment interactions. [IBCF.MTME][] implements item-based collaborative filtering for multi-trait and multi-environment trials. The package [gge][] is useful for producing GGE biplots, while [bayesammi][] can conduct Bayesian estimation of additive main effects multiplicative interaction model. [EnvRtype][] can be used for assembling climate data, data set preparation and environmental classification. [FW][] implements Finlay-Wilkinson regression using a Gibbs sampler. 

### Plant pathology

  [epifitter][] provides functions for analysis and visualization of plant disease progress curve data. [epiphy][] is a toolbox for analyzing plant disease epidemics. It provides a common framework for plant disease intensity data recorded over time and/or space. [hagis][] provides functions for analysis of plant pathogen pathotype survey data. Functions provided calculate distribution of susceptibilities, distribution of complexities with statistics, pathotype frequency distribution, as well as diversity indices for pathotypes. Populatios with mixed clonal/sexual reproductive strategies can be analyzed with [poppr][], which has population genetic analysis tools for hierarchical analysis of partially clonal populations. [ascotraceR][] can simulate an Asochyta blight infection in a chickpea field following the model developed by [Diggle et al (2002)](https://doi.org/10.1094%2FPHYTO.2002.92.10.1110)). 
  
### Rural sociology

  See the CRAN task view for [Psychometrics](https://cran.r-project.org/web/views/Psychometrics.html) and [SocialScience](https://cran.r-project.org/web/views/SocialSciences.html). Both the ['Survival' CRAN task view](https://cran.microsoft.com/snapshot/2022-03-27/web/views/Survival.html) and the [agriCensData][] package provide tools for working with interval and censored data. 

### Soil science
  
  [sharpshootR][] contains a compendium of utility functions supporting soils survey work including data management, summary, visualizations and conversions.For soil pedology, [aqp](https://github.com/ncss-tech/aqp/) provides a general toolkit for soil scientists: specialized data structures, soil profile summary, visualization, color conversion, and more. Most USDA-NRCS soils related databases and APIs can be accessed with [soilDB](https://github.com/ncss-tech/soilDB/). [SoilTaxonomy][] provides functions for parsing soil taxonomic terms. The ["Spatial"](https://CRAN.R-project.org/view=Spatial) and ["Spatio-Temporal"](https://CRAN.R-project.org/view=SpatioTemporal) CRAN task views provide extensive resources in spatial statistics. [fertplan][] provides fertilizer recommendations based on soil test results (note this packages is optimized for horticultural crop production in Italy).

### Weed science

  The package [drc][] offers versatile model fitting and after-fitting functions for dose-response curves. [PROSPER][] is a package for simulating weed population dynamics at the individual and population level under a range of conditions including herbicide resistance and herbicide pressure. For ecological studies and analytical applications, the [CRAN task view for Environmetrics](https://cran.r-project.org/web/views/Environmetrics.html) provides a list of existing R resources in this topic. 
    

## Additional links

* [AgStats.IO](www.agstats.io)
* [Rstats4Ag](https://rstats4ag.org/)
* [Spatial Analysis for Agricultural Field Experiments](https://idahoagstats.github.io/guide-to-field-trial-spatial-analysis/)

-----------------------------------------------------------------

[AGHmatrix]: https://CRAN.R-project.org/package=AGHmatrix
[agriCensData]: https://github.com/OnofriAndreaPG/agriCensData
[agricolae]: https://CRAN.R-project.org/package=agricolae
[agridat]: https://CRAN.R-project.org/package=agridat 
[agriTutorial]: https://CRAN.R-project.org/package=agriTutorial
[agroBioData]: https://github.com/OnofriAndreaPG/agriCensData
[apsimx]: https://CRAN.R-project.org/package=apsimx 
[aqp]: https://CRAN.R-project.org/package=aqp 
[ascotraceR]: https://cran.r-project.org/package=ascotraceR
[ASMap]: https://CRAN.R-project.org/package=ASMap
[asremlPlus]: https://CRAN.R-project.org/package=asremlPlus 
[bayesammi]: https://CRAN.R-project.org/package=bayesammi 
[BGLR]: https://CRAN.R-project.org/package=BGLR
[bravo]: https://CRAN.R-project.org/package=bravo   
[breedR]: https://github.com/famuvie/breedR
[cdlTools]:  https://CRAN.R-project.org/package=cdlTools
[cpgen]: https://github.com/cheuerde/cpgen
[CropScapeR]: https://CRAN.R-project.org/package=CropScapeR 
[desplot]: https://CRAN.R-project.org/package=desplot 
[diaQTL]: https://github.com/jendelman/diaQTL
[drc]: https://CRAN.R-project.org/package=drc 
[DSSAT]: https://CRAN.R-project.org/package=DSSAT 
[EnvRtype]: https://github.com/allogamous/EnvRtype
[epifitter]: https://CRAN.R-project.org/package=epifitter
[epiphy]: https://CRAN.R-project.org/package=epiphy 
[fabio]: https://github.com/fineprint-global/fabio
[faobulk]: https://github.com/muuankarski/faobulk  
[FAOSTAT]: https://CRAN.R-project.org/package=FAOSTAT
[FedData]: https://CRAN.R-project.org/package=FedData
[fertplan]: https://github.com/mbask/fertplan
[FW]: https://github.com/lian0090/FW/
[ggfertilizer]: https://github.com/wenlong-liu/ggfertilizer
[gge]: https://CRAN.R-project.org/package=gge 
[GWASpoly]: https://github.com/jendelman/GWASpoly
[hagis]: https://CRAN.R-project.org/package=hagis
[hnp]: https://cran.r-project.org/package=hnp 
[IBCF.MTME]: https://CRAN.R-project.org/package=IBCF.MTME
[INLA]: https://github.com/inbo/INLA
[LinkageMapView]: https://CRAN.R-project.org/package=LinkageMapView 
[lmDiallel]:  https://CRAN.R-project.org/package=lmDiallel 
[lme4gs]: https://github.com/perpdgo/lme4GS
[lme4qtl]: https://github.com/variani/lme4qtl
[mappoly]: https://CRAN.R-project.org/package=mappoly 
[MapRtools]: https://github.com/jendelman/MapRtools
[MCMCglmm]: https://CRAN.R-project.org/package=MCMCglmm
[MegaLMM]: https://github.com/deruncie/MegaLMM/
[meteor]: https://CRAN.R-project.org/package=meteor
[nlraa]: https://cran.r-project.org/package=nlraa
[NutrienTrackeR]: https://CRAN.R-project.org/package=NutrienTrackeR
[onemap]: https://CRAN.R-project.org/package=onemap
[pedigreemm]: https://CRAN.R-project.org/package=pedigreemm
[phenorice]: https://github.com/cropmodels/phenorice
[phenoriceR]: https://github.com/lbusett/phenoriceR
[plantbreeding]: https://r-forge.r-project.org/projects/plantbreeding/
[polyBreedR]: https://github.com/jendelman/polyBreedR
[polymapR]: https://CRAN.R-project.org/package=polymapR
[polyqtlR]: https://CRAN.R-project.org/package=polyqtlR 
[poppr]: https://cran.r-project.org/package=poppr
[PROSPER]: https://CRAN.R-project.org/package=PROSPER 
[qgtools]: https://CRAN.R-project.org/package=qgtools
[qtl]: https://CRAN.R-project.org/package=qtl
[qtlpoly]: https://CRAN.R-project.org/package=qtlpoly
[rapsimng]: https://CRAN.R-project.org/package=rapsimng
[rarms]: https://CRAN.R-project.org/package=rarms 
[Recocrop]: https://CRAN.R-project.org/package=Recocrop 
[rMVP]: https://CRAN.R-project.org/package=rMVP
[rnassqs]: https://CRAN.R-project.org/package=rnassqs 
[Rquefts]: https://CRAN.R-project.org/package=Rquefts
[rrBLUP]: https://CRAN.R-project.org/package=rrBLUP
[rusda]:  https://CRAN.R-project.org/package=rusda
[Rwofost]: https://CRAN.R-project.org/package=Rwofost
[sharpshootR]: https://CRAN.R-project.org/package=sharpshootR
[simplePHENOTYPES]: https://github.com/samuelbfernandes/simplePHENOTYPES
[sommer]: https://CRAN.R-project.org/package=sommer
[soilDB]: https://CRAN.R-project.org/package=soilDB
[SoilTaxonomy]: https://CRAN.R-project.org/package=SoilTaxonomy
[SoyNAM]: https://CRAN.R-project.org/package=SoyNAM
[SpATS]: https://CRAN.R-project.org/package=SpATS 
[st4gi]: https://github.com/reyzaguirre/st4gi
[StageWise]: https://github.com/jendelman/StageWise
[statgenGWAS]: https://CRAN.R-project.org/package=statgenGWAS
[statgenGxE]: https://CRAN.R-project.org/package=statgenGxE 
[statgenHTP]:	https://CRAN.R-project.org/package=statgenHTP
[statgenIBD]:	https://CRAN.R-project.org/package=statgenIBD
[statgenMPP]:	https://CRAN.R-project.org/package=statgenMPP
[statgenSTA]: https://CRAN.R-project.org/package=statgenSTA
[tidyUSDA]: https://CRAN.R-project.org/package=tidyUSDA
[usdampr]: https://CRAN.R-project.org/package=usdampr
