---
name: Agriculture
topic: Agricultural Science
maintainer: Julia Piaskowski, Adam Sparks, Adrian Correndo
email: julia.piask@gmail.com
version: 2025-10-20
---

Agriculture encompasses a broad breadth of disciplines.
Many packages in base R and contributed packages are useful to agricultural researchers.
For that reason, this is not an exhaustive list of all packages useful to agricultural research.
This CRAN task view is intended to cover major packages that in most cases, have been developed to support agricultural research and analytical needs.

Note that some of these packages are on CRAN and others are on GitHub, Bioconductor, or R-Forge.

If you think that a package is missing from this list, please let us know through issues or pull requests in the [GitHub repository](https://github.com/cran-task-views/Agriculture).

## Table of contents

- [Packages with general applications](#general)
  - [Agricultural & land use databases](#databases)
  - [Agricultural data sets](#datasets)
  - [General analytical packages supporting agricultural research](#analysis)
- [Discipline-specific packages](#disciplines)
  - [Agricultural economics](#AgEcon)
  - [Agrometeorology](#agrometeo)
  - [Agronomic trials](#AgTrials)
    - [Experimental design](#ExpDesign)
    - [High throughput phenotyping (HTP)](#htp)
    - [Trial analysis](#TrialAnalysis)
  - [Animal science](#AnimalScience)
  - [Biosecurity](#Biosecurity)
  - [Breeding & quantitative genetics](#breeding)
    - [Linkage mapping & QTL analysis](#qtl)
    - [GWAS (Genome Wide Association Studies)](#gwas)
    - [Genomic prediction](#GenomicPrediction)
  - [Crop growth models & crop modelling](#CropModel)
  - [Entomology](#entomol)
  - [Food science](#FoodScience)
  - [Genotype-by-environment interactions](#GxE)
  - [Plant pathology](#PlantPath)
  - [Rural sociology](#RuralSoc)
  - [Soil science and precision agriculture](#SoilScience)
    - [Remote sensing](#remotesensing)
  - [Weed science](#WeedScience)

## [Packages with general applications]{#general}

### [Agricultural & land use databases]{#databases}

- _USDA databases_: Data from the United States Department of Agriculture's National Agricultural Statistical Service '[Quick Stats](https://www.nass.usda.gov/Quick_Stats/)' web API can be accessed with `r pkg("rnassqs")` or with `r pkg("tidyUSDA", priority = "core")`, which also offers some mapping capabilities.
  The USDA's [Cropland Data Layer](https://nassgeodata.gmu.edu/CropScape/) API can be accessed with `r pkg("CropScapeR")` and `r pkg("cdlTools", priority = "core")`, the latter providing utility functions for processing CDL data.
  The USDA's Agricultural Resource Management Survey ([ARMS](https://www.nass.usda.gov/Surveys/Guide_to_NASS_Surveys/Ag_Resource_Management/)) data API can be accessed with `r pkg("rarms")`.
  The USDA's Livestock Mandatory Reporting data API can be accessed with `r pkg("usdampr")`.
  The package `r pkg("FAOSTAT")` can be used to access data from the [FAOSTAT Database](https://www.fao.org/faostat/en/#home) from the United Nations Food and Agricultural Organization (FAO).

- `r pkg("QBMS")` provides functions to query [BrAPI](https://brapi.org/)-compliant databases with additional functionality for the [GIGWA](https://southgreen.fr/content/gigwa) platform.

- `r pkg("FedData", priority = "core")` provides access to geospatial data from the United States Soil Survey Geographic ([SSURGO](https://data.nal.usda.gov/dataset/soil-survey-geographic-database-ssurgo)) database, the Global Historical Climatology Network ([GHCN](https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily)), the [Daymet](https://daymet.ornl.gov/) gridded estimates of daily weather parameters for North America, the [International Tree Ring Data Bank](https://www.ncei.noaa.gov/products/paleoclimatology/tree-ring), and the [National Land Cover Database](https://www.usgs.gov/centers/eros/science/national-land-cover-database#overview).

- `r github("INTA-Suelos/SISINTAR")` provides access to [SiSINTA](http://sisinta.inta.gob.ar/) (Sistema de información de Suelos del INTA), a soil profile database for Argentina, and functions for processing the data.

- SILO weather data from the [Queensland DES Longpaddock](https://www.longpaddock.qld.gov.au) website can be accessed with `r pkg("cropgrowdays")`.

- `r pkg("PGRdup")` provides functions to aid the identification of probable/possible duplicates in plant genetic resources collections.

- `r pkg("rfieldclimate")` provides functionality and parsers to interact with the [FieldClimate API](https://api.fieldclimate.com/v2/docs/).

- `r pkg("pestr")` offers tools to extract pest data from [EPPO Data Services](https://data.eppo.int/) and [EPPO Global Database](https://gd.eppo.int/) using [EPPO database API](https://data.eppo.int) and put them into tables with human-readable formats.

- `r pkg("PesticideLoadIndicator")` computes the Danish Pesticide Load Indicator as described in Kudsk ([2018](https://doi.org/10.1016%2Fj.landusepol.2017.11.010)) and Moehring ([2019](https://doi.org/10.1016%2Fj.scitotenv.2018.07.287)) for pesticide use data.

- `r pkg("QBMS")` provides functions to query [BrAPI](https://brapi.org/)-compliant databases with additional functionality for the [GIGWA](https://southgreen.fr/content/gigwa) platform.

- `r pkg("genesysr")` provides access data on plant genetic resources from genebanks around the world published on [Genesys](https://www.genesys-pgr.org).

### [Agricultural data sets]{#datasets}

Many of the agriculture-focused packages listed in this guide also include data sets to illustrate their functionality (e.g. `r pkg("agricolae", priority = "core")`, `r pkg("AgroTech")`, `r pkg("BGLR")`).

- `r pkg("agridat", priority = "core")` consists of a very large collection of agricultural data sets and example analyses; the package contains a vignette detailing additional data sets and extensive resources to support agricultural analysis.

- `r pkg("agriTutorial")` provides a collection of agricultural data sets and analysis with particular attention to crop experiments.

- The [soybean nested associated mapping population data set](https://pubmed.ncbi.nlm.nih.gov/28724064/) can be accessed via `r pkg("SoyNAM")`.

- The FAOSTAT data set collection for the Food and Agriculture Biomass Input--Output model ([FABIO](https://pubs.acs.org/doi/10.1021/acs.est.9b03554)) is available through `r github("fineprint-global/fabio")`.

- `r pkg("simplePHENOTYPES")` can be used for simulating pleiotropic, linked and epistatic phenotypes.

- Annual agriculture production data from the Peruvian Integrated System of Agricultural Statistics (SIEA) covering 2004 to 2014 can be accessed with `r pkg("cropdatape")`.

- `r pkg("geodata")` contain agriculturally-relevant spatial data sets from a wide variety of data sources spanning both terrestrial and marine data.

- `r pkg("ZeBook")` provides data sets and examples accompanying the book [Working with Dynamic Crop Models](https://www.elsevier.com/books/working-with-dynamic-crop-models/wallach/978-0-12-811756-9).

### [General analytical packages supporting agricultural research]{#analysis}

The `r view("MixedModels")` task view provides a comprehensive list of packages relevant to fitting general and generalized linear mixed models.

- The packages `r pkg("nlraa", priority = "core")` and `r pkg("AgroReg")` provides linear and nonlinear regression functions specifically for agricultural applications.
  `r pkg("biotools")` can conduct a wide array of multivariate analysis for agronomists including genetic covariance, optimal plot size, tests for spatial dependence, and tests for seed lot heterogeneity.

- `r github("OnofriAndreaPG/agriCensData")` is a flexible package for working with censored data (e.g. time to flowering, instrumentation values below the detection limit, disease scoring).

- `r pkg("grapesAgri1")` houses a collection of Shiny apps, [GRAPES](https://www.kaugrapes.com/) (General R-shiny based Analysis Platform Empowered by Statistics), that works as a graphical user interface for individuals to upload data files and analyse.
  Linear models, ANOVA for CRD and 2-way RCBD designs, correlation analysis, exploratory data analysis and other common hypothesis tests are supported.

- `r pkg("ALUES")` implements methodology developed by the FAO and the International Rice Research Institute for evaluating land suitability for different crop production.

- `r pkg("AGPRIS")` (AGricultural PRoductivity in Space) provides functions for different spatial analyses in implemented in `r github("inbo/INLA")` and other spatial approaches.
  The package `r pkg("KenSyn")` has example data sets and analytical code supporting the book [**De L'analyse des Réseaux Expérimentaux à la Méta-analyse**](https://www.quae.com/produit/1514/9782759228164/de-l-analyse-des-reseaux-experimentaux-a-la-meta-analyse) (French) or [**From Experimental Network to Meta-analysis**](https://link.springer.com/book/10.1007/978-94-024-1696-1) (English).

- `r pkg("AgroTech")` provides functions for making chemical application calculations and example data sets.

## [Discipline-specific packages]{#disciplines}

### [Agricultural economics]{#AgEcon}

The task views for `r view("Econometrics")`, (Empirical) `r view("Finance")`, and `r view("TimeSeries")` provide information on packages and tools relevant to agriculture economics.

- _Agricultural price forecasting_: `r pkg("vmdTDNN")` forecasts univariate time series data using variational mode decomposition based time delay neural network models as described by [Dragomiretskiy 2014](https://doi.org/10.1109/TSP.2013.2288675). `r pkg("stlELM")` also conducts univariate time series forecasting univariate time series, using seasonal-trend decomposition procedures based on loess (STL) combined with the extreme learning machine developed by [Xiong 2018](https://doi.org/10.1016%2Fj.neucom.2017.11.053). The package `r pkg("eemdTDNN")` also conduct univariate forecasting, utilizing different decomposition based time delay neural network models based on [Yu 2008](https://doi.org/10.1016%2Fj.eneco.2008.05.003).

### [Agrometeorology]{#agrometeo}

The task view for `r view("Hydrology")` has many resources for accessing and processing weather and climate data.

- _Data sources_: Data from the [Copernicus](https://cds.climate.copernicus.eu/cdsapp#!/dataset/sis-agrometeorological-indicators?tab=overview) data set of agrometeorological indicators can be downloaded and extracted using `r pkg("ag5Tools")`.
  Climate crop zones in Brazil can be accessed and calculated with `r pkg("cropZoning")` using data sets from [TerraClimate](https://www.climatologylab.org/terraclimate.html) that are calibrated to weather stations run by the National Meteorological Institute of Brazil.
  `r pkg("acdcR")` (AgroClimatic Data by County) provides functions to calculate United States county-level variables in agricultural production or agroclimatic and weather analyses.

- _Data preparation_: `r pkg("meteor", priority = "core")` provides a set of functions for weather and climate data manipulation to support crop and crop disease modeling.
  `r pkg("cropgrowdays")`, `r pkg("climatrends")` and `r pkg("degday")` can be used for calculating growing degree days, cumulative rainfall, number of stress day, mean radiation, crop sensitive indices, evapotranspiration and other variables. `r pkg       ("weaana")` has utility functions to compute agroclimatic indices useful to zoning areas based on climatic variables and to evaluate the importance of temperature and precipitation for individual crops or in general for agricultural lands.

- `r pkg("FAO56")` and `r pkg("MeTo")` provide functions for calculating agrometeorological indicators following the FAO Monograph 56, _Crop evapotranspiration: Guidelines for computing crop water requirements_ ([1998](https://www.fao.org/3/X0490E/x0490e00.htm)).

- `r pkg("agriwater")` provides spatial modeling of energy balance and actual evapotranspiration using satellite images and meteorological data.
  `r pkg("AquaBEHER")` computes and integrates daily reference evapotranspiration into a water balance model to estimate the calendar of wet-season (onset, cessation and duration) based on `agroclimatic` approach.

- `r pkg("LWFBrook90R")` provides an implementation of the soil vegetation atmosphere transport (SVAT) model LWF-BROOK90 to calculate daily evaporation (transpiration, interception, and soil evaporation) and soil water fluxes, along with soil water contents and soil water tension of a soil profile covered with vegetation.

- `r pkg("kgc")` identifies the [Koeppen-Geiger climatic zone](http://koeppen-geiger.vu-wien.ac.at/) for a given location based on relative heat and humidity.

### [Agronomic trials]{#AgTrials}

#### [Experimental design]{#ExpDesign}

The task view for `r view("ExperimentalDesign")` provide additional information on experimental design for a wide variety of research problems.

- `r pkg("agricolae", priority = "core")` provides extensive resources for the planning and analysis of planned field experiments.
  Designs constructed by `r pkg("agricolae", priority = "core")` can be visualised with `r pkg("agricolaeplotr")`.
  Agricultural field trials layout can be also be visualised with `r pkg("desplot")`.

- `r pkg("blocksdesign")` provides functions for creating (and optimize) various experimental designs applied to agriculture, particularly for linear treatment models with crossed or nested block factors.

- `r pkg("PBIBD")` can construct partially balanced incomplete block designs and the Youden-m square (row-column) design and can calculate design efficiency.

- `r pkg("biometryassist")` can be used for experimental design and analysis; it also includes several functions to interface with [ASReml-R](https://vsni.co.uk/software/asreml-r) objects.

- The package [DiGGer](https://www.nswdpibiom.org/austatgen/software/) was developed for rectangular field trials; its purpose is to help users determine the optimal experimental design based on the treatment structure and number of replicates.

- `r pkg("inti", priority = "core")` provides functionality for experimental design and manipulation and it is focused on [FieldBook](https://excellenceinbreeding.org/toolbox/tools/field-book) compatibility.

- `r pkg("FielDHub")` is a Shiny app for generating traditional, un-replicated, augmented and partially-replicated designs applied to agriculture, plant breeding, forestry, animal and biological sciences.

- `r pkg("qrlabelr")` is an R package that provides customizable functions and a [shiny-app](https://awkena.shinyapps.io/easyplotlabelr/) for generating print-ready machine and human-readable labels affixed with QR codes.

- `r github("PPaccioretti/ofemeantest")` permutation-based statistical method for spatial data in unreplicated on-farm experiments.

#### [High throughput phenotyping (HTP)]{#htp}

- `r pkg("statgenHTP")` is for analyzing data from HTP platform experiments, with some functions specifically designed to work with the proprietary software [ASReml-R](https://www.vsni.co.uk/software/asreml).

- `r github("OpenDroneMap/FIELDimageR")` is general-purpose package for processing and analyzing image data from drones.

- `r pkg("FWRGB")` can process plant images for downstream machine learning models to predict fresh biomass.
  `r pkg("pliman")` provides tools for image manipulation to quantify plant leaf area, disease severity, number of disease lesions, and obtain statistics of image objects such as grains, pods, pollen, leaves, and more.

#### [Trial analysis]{#TrialAnalysis}

- _General analysis_: The package `r pkg("agricolae", priority = "core")` contains functions for analyzing many common designs in agriculture trials such as split plot, lattice, Latin square and some additional functions such AMMI and AUDPC calculations.
  The proprietary software [Asreml-R](https://www.vsni.co.uk/software/asreml) provides an R version of their mixed model software for field trial analysis (note this is not open source and requires an annual license).
  CRAN also contains an add-on package `r pkg("asremlPlus")` that provides several accessory functions to ASReml-R.
  `r pkg("agriutilities")` contains utility functions for analyzing single and multi-location trials, and it also has functions for interfacing with AsReml-R.
  [INLA](https://www.r-inla.org/) provides tools for Bayesian inference of latent Gaussian models, and it contains functions for modelling spatial variation, such as field experiments or farm locations.
  The `r pkg("gosset")` package provides the toolkit for a workflow to analyse experimental agriculture data, from data synthesis to model selection and visualisation.
  `r pkg("AgroR")` has general functions and a [Shiny app](https://agrorproject.shinyapps.io/agror_shiny/) for analysis of common designs in agriculture: CRD, RCBD and Latin square.

- _Spatial analysis_: the `r pkg("statgenSTA")` has functions for single trial analysis with and without spatial components.
  `r pkg("SpATS")` can be used to adjust for field spatial variation using [p-splines](https://dx.doi.org/10.1002/bimj.202100212).
  A localised method of spatial adjustment for unreplicated trials, moving grid adjustment, is implemented with `r pkg("mvngGrAd")`.

- Trials utilizing an incomplete block design can be analysed used `r pkg("ispd")`.

- `r pkg("ClimMobTools")` is the API Client for the [ClimMob](https://climmob.net/) citizen science platform in R for agronomic field trials.

### [Animal science]{#AnimalScience}

The `r view("Tracking")` task view has many resources for working with tracked animal data and studying animal movement.

- The package `r pkg("usdampr")` provides access to the USDA's Livestock Mandatory Reporting API.

- Many of the genetic packages described in the [breeding section](#breeding) of this task view can also be applied to animals. `r github("luansheng/visPedigree")` can be used to visualise complex animal pedigrees.

- `r github("juanmarcosmoreno-arch/cowfootR")` provides functions to estimate the carbon footprint of dairy farms.

### Biosecurity{#Biosecurity}

There are a few packages that are either specifically tailored for biosecurity or may commonly be used in agricultural biosecurity assessments.

- `r pkg("qPRAentry")` supports risk assessors in performing the entry step of the quantitative Pest Risk Assessment.

- `r pkg("dismo")` provides methods for species distribution modeling, that is, predicting the environmental similarity of any site to that of the locations of known occurrences of a species.

### [Breeding & quantitative genetics]{#breeding}

See the R package repository [Bioconductor](https://www.bioconductor.org/) for bioinformatic tools to support the processing of high-throughput genomic data.

- _General plant breeding_: `r github("reyzaguirre/st4gi")` and `r pkg("variability")` provides several common utility functions for genetic improvement of crops.
  Also, please see the subsection on "genotype-by-environment interactions" in this task view for packages integrating environmental and genomic data in an analytical framework.
  `r pkg("gpbStat")` provides functions for common plant breeding analyses including line-by-tester analysis ([Arunachalam 1974](http://repository.ias.ac.in/89299/) and diallel analysis ([Griffing 1956](https://www.publish.csiro.au/bi/pdf/BI9560463)).

- `r pkg("lmDiallel")` provides service functions for analysing data sets obtained from diallel experiments, as described in [Onofri 2020](https://doi.org/10.1007%2Fs00122-020-03716-8).

- `r pkg("heritability")` implements marker-based estimation of heritability when observations on genetically identical replicates are available.

- `r pkg("selection.index")` calculates a selection index using the method described by Smith ([1936](https://onlinelibrary.wiley.com/doi/10.1111/j.1469-1809.1936.tb02143.x)).

- _Breeding simulations_: `r pkg("AlphaSimR")` provides functions for stochastic modelling of processes common to breeding programs such as selection and crossing, in plant or animals [Gaynor et al. 2020](https://doi.org/10.1093/g3journal/jkaa017). `r pkg("SIMplyBee")` is an extension of AlphaSimR for honeybees [Obsteter et al. 2023](https://doi.org/10.1186/s12711-023-00798-y). `r pkg("MoBPS")` also provides functions for stochastic modelling of breeding programs [Pook et al. 2020](https://doi.org/10.1534/g3.120.401193). Using wrapper functions for the AlphaSimR, the `r pkg("FieldSimR")` simulates plot data in multi-environment field trials with one or more traits and allows to capture spatial error trends.

#### [Linkage mapping & QTL analysis]{#qtl}

There are several packages focused on [linkage disequilibrium on Bioconductor](https://bioconductor.org/packages/release/BiocViews.html#___LinkageDisequilibrium).

- There are two notable and long-standing packages for quantitative trait loci (QTL) analysis: (1) `r pkg("onemap")`, providing [MapMaker/EXP](https://gaow.github.io/genetic-analysis-software/m/mapmakerexp/)-like performance and additional tools; and (2) `r pkg("qtl", priority = "core")` providing standard QTL mapping functionality and accessory functions for simulating crosses.
  `r pkg("ASMap")` can conduct fast linkage mapping with the algorithm 'MSTmap'.
  `r github("jendelman/MapRtools")` is multipurpose linkage mapping package for teaching and research.

- For polyploids, the packages `r pkg("mappoly")` and `r pkg("polymapR")` can be used for linkage mapping and the packages `r pkg("qtlpoly")` and `r pkg("polyqtlR")` can be used for QTL estimation.
  `r github("jendelman/diaQTL")` is for QTL and haplotype analysis of diallel populations (diploid and autotetraploid).

- `r pkg("statgenMPP")` can conduct QTL mapping in multi-parent populations.

- Linkage maps can be visualized with `r pkg("LinkageMapView")`.

#### [GWAS (Genome Wide Association Studies)]{#gwas}

There are many [GWAS packages on Bioconductor](https://bioconductor.org/packages/release/BiocViews.html#___GenomeWideAssociation) and a large number of other GWAS packages in CRAN not listed here.
The packages listed here have specific applications in breeding populations common in agriculture.

- GWAS can be conducted using a [stepwise mixed linear model](https://www.nature.com/articles/ng.2314) for multilocus data with `r pkg("mlmm.gwas")`.
  The package `r pkg("statgenGWAS")` can fit GWAS models using the [EMMAX algorithm](https://www.nature.com/articles/ng.548).
  `r github("jiabowang/GAPIT3")` is [wrapper](https://doi.org/10.1016/j.gpb.2021.08.005) for several GWAS algorithms including the original [GAPIT](https://doi.org/10.1093/bioinformatics/bts444), [FarmCPU](https://doi.org/10.1002/pld3.53) and [BLINK](https://doi.org/10.1093/gigascience/giy154).

- GWAS models for a very large number of SNPs and/or observations can be estimated with `r pkg("rMVP")`.
  `r github("deruncie/GridLMM")` provides functions to conduct GWAS in models that require two or more random effects (e.g. additive and dominance kinship matrices, or kinship and spatial covariance matrices).
  Functions for conducting GWAS in autotetraploids are provided by `r github("jendelman/GWASpoly")`, and these functions also work in diploid species.
  Variable selection for ultra-large dimensional GWAS data sets can be done with `r pkg("bravo")`, which implements the Bayesian algorithm [SVEN](https://arxiv.org/abs/2006.07561), selection of variables with embedded screening.

- `r github("jendelman/StageWise")` provides functions to conduct a 2-stage GWAS when the phenotypic data are from multiple field trials.

- For polyploids, `r github("jendelman/polyBreedR")` provides convenience functions to facilitate the use of genome-wide markers for breeding autotetraploid species, and its functionality also extends to diploids.

- `r pkg("pleiotest")` conducts multi-trait GWAS and tests for pleiotropic effects.

#### [Genomic prediction]{#GenomicPrediction}

- _General genomic selection packages_: `r github("famuvie/breedR")` is a general purpose package for performing quantitative genetic analyses. Genome feature mixed linear models using frequentist and Bayesian approaches can be implemented with `r pkg("qgg")`.

  `r pkg("BWGS")`, "Breed Wheat Genomic Selection", provides a pipeline of functions for conducting genomic selection in hexaploid wheat.

- _GBLUP_: Packages supporting genetic prediction using mixed models augmented with pedigree or genetic marker data include `r pkg("sommer", priority = "core")`, `r pkg("rrBLUP")`, `r pkg("BGLR")`, `r github("variani/lme4qtl")`, `r pkg("pedigreemm")`, `r github("cheuerde/cpgen")`, `r pkg("QTLRel")`, `r pkg("lme4breeding")`, and the licensed software [ASReml](https://www.vsni.co.uk/software/asreml). Many of these packages have built-in functionality for data preparation steps including data imputation and calculation of the relationship matrices.

- `r pkg("GSelection")` implements genomic selection integrating additive and non-additive models.

- `r pkg("coxme")` can fit Cox proportional hazards models containing both fixed and random effects with a kinship matrix.

- `r pkg("GSMX")`, multivariate genomic selection, estimates trait heritability and handles overfitting through cross validation.

- `r pkg("TSDFGS")` can estimate the optimal training population size and composition for genomic selection.

- `r pkg("PopVar")` has function for estimating population genetic variance from a biparental cross.

- _Multiple environments and traits_: `r pkg("BGGE")` conducts genomic prediction for continuous variables, focused on genotype-by-environment genomic selection models following the methods of [Jarquín 2014](https://doi.org/10.1007%2Fs00122-013-2243-1).
  `r github("deruncie/megaLMM")` implements multivariate genomic prediction with very large numbers of traits (up to several thousand) using Bayesian genomic prediction models.

- _Kinship and relatedness_: `r pkg("AGHmatrix", priority = "core")` provides extensive options for calculating pedigree and genomic relationships (additive and dominance).
  The `r pkg("pedigree")` packages provides functionality for ordering pedigrees, calculating and inverting the pedigree relationship matrix and other related tasks.
  `r pkg("statgenIBD")` can calculate IBD probabilities for biparental, three-way and four-way crosses.
  `r pkg("kinship2")` provides functions for manipulating and visualising pedigree-based kinship data.

### [Crop growth models & crop modelling]{#CropModel}

- The `r pkg("apsimx", priority = "core")` package has functions to read, inspect, edit and run files for APSIM "Next Generation" (`.json`, `.apsimx`) and APSIM "Classic" (`.xml`, `.apsim`) files. `r pkg("rapsimng")` works with next generation APSIM files.

- `r pkg("DSSAT", priority = "core")` provides a comprehensive R interface to the Decision Support System for Agrotechnology Transfer Cropping Systems Model (DSSAT-CSM) documented by [Jones (2003)](<https://doi.org/10.1016/S1161-0301(02)00107-7>). This package provides cross-platform functions to read and write input files, run DSSAT-CSM, and read output files. r pkg("Dasst")` also interfaces with DSSAT files.

- `r pkg("growthPheno")` implements tools for estimating the growth of plants, including data from high throughput phenotyping. It uses a "Smoothing and Extraction of Traits" (SET) algorithm.

- The modelling framework Simplace (Scientific Impact assessment and Modelling Platform for Advanced Crop and Ecosystem management) can be accessed using `r pkg("simplace")`.Additionally, `r github("gk-crop/simplaceUtil")` provides additional utility functions that make the setup and handling of simulations more convenient.

- `r pkg("fruclimadapt")` calculates several phenological variables important to grape vines and fruit trees in order to evaluate climate adaptation and to estimate the incidence of weather-related disorders in these species.

- _Crop Water Usage_: `r pkg("cropDemand")` can be used to estimate crop water demand in Brazilian production regions using the [TerraClimate](https://www.climatologylab.org/terraclimate.html) data set. `r pkg("Evapotranspiration")` can estimate potential and actual evapotranspiration using 21 different models.

- `r pkg("metrica")` has many convenience functions for comparing model predictions with ground truth data.

- _Crop Growth Models_: `r pkg("Rwofost")` is an implementation of the WOFOST (World Food Studies) crop growth model ([de Wit 2019](https://doi.org/10.1016%2Fj.agsy.2018.06.018)).
  `r pkg("Rquefts")` provides an implementation of the QUEFTS (Quantitative Evaluation of the Native Fertility of Tropical Soils) model ([Janssen 1990](https://doi.org/10.1016%2F0016-7061%2890%2990021-Z)).

- `r pkg("Recocrop")` estimates environmental suitability for plants using a limiting factor approach for plant growth following [Hackett (1991)](https://doi.org/10.1007%2FBF00045728).

- _Ecophysiology_: `r pkg("photosynthesis")` has an extensive number of tools for plant ecophysiology modelling and analysis. `r pkg("tealeaves")` implements models for understanding leaf temperature using energy balance.
  `r pkg("plantecophys")` supports the coupled leaf gas exchange model, A-Ci curve simulation and fitting, Ball-Berry stomatal conductance models, leaf energy balance using Penman-Monteith, Cowan-Farquhar optimization, and humidity unit conversions.

- `r pkg("bigleaf")` calculates (e.g. aerodynamic conductance, surface temperature) and physiological (e.g. canopy conductance, water-use efficiency) ecosystem properties from eddy covariance data and accompanying meteorological measurements.

- `r pkg("STCCGEV")` serves to model and forecast crop yields using a spatial temporal conditional copula approach, including weather covariates and Bayesian Structural Time Series models to analyze crop yield dependencies across multiple regions.

### [Entomology]{#entomol}

- The `r view("Survival")` task view lists resources for working with censored data.
- `r pkg("hnp")` Generates half-normal plots with simulation envelopes using different diagnostics from a range of different fitted models.

### [Food science]{#FoodScience}

For packages supporting sensory studies, see the `r view("Psychometrics")` task view.

- `r pkg("NutrienTrackeR")` provides convenience functions for calculating nutrient content (macronutrients and micronutrients) of foods using food composition data from several reference databases, including: 'USDA' (United States), 'CIQUAL' (France), 'BEDCA' (Spain) and 'CNF' (Canada).

### [Genotype-by-environment interactions]{#GxE}

- `r pkg("statgenGxE")` implements several analytical approaches for addressing genotype-by-environment interactions.

- The package `r pkg("gge")` can generate GGE biplots, while `r pkg("bayesammi")` can conduct Bayesian estimation of additive main effects multiplicative interaction (AMMI) model.
  `r pkg("metan")` and `r pkg("geneticae")` can performs stability analysis of multi-environment trial data using a wide range of parametric and non-parametric methods.

- `r github("allogamous/EnvRtype")` can be used for assembling climate data, data set preparation and environmental classification or envirotyping.

- `r pkg("spFW")` conducts spatial Finlay-Wilkinson analysis for multi-environmental trials using a Bayesian hierarchical model.

- A wide variety of stability analysis statistics can be calculated via `r pkg("agrostab")` including coefficient of homeostaticity, specific adaptive ability, weighted homeostaticity index, [superiority measure](https://doi.org/10.4141%2Fcjps88-018), [regression on environmental index](https://doi.org/10.2135%2Fcropsci1966.0011183X000600010011x), [Tai's stability parameters](https://doi.org/10.2135%2Fcropsci1971.0011183X001100020006x), [stability variance](https://doi.org/10.1038%2Fhdy.1972.87), ecovalence and other stability parameters.
  `r pkg("toolStability")` and `r pkg("stability")` also calculate stability analyses.

- `r pkg("IBCF.MTME")` implements item-based collaborative filtering for continuous data in multi-trait and multi-environment trials following the methods described by Montesinos-López ([2018](https://acsess.onlinelibrary.wiley.com/doi/10.3835/plantgenome2018.02.0013)).

- `r github("cjubin/learnMET")` integrates weather retrieval functions with machine learning methods to understand genotype-by-environments interactions.

### [Plant pathology]{#PlantPath}

The `r view("Epidemiology")` task view lists relevant package for modelling plant diseases.

- _Epidemiology Simulation_: Stochastic disease modelling of plant pathogens incorporating spatial and genetic information can be done with `r pkg("landsepi")`. The package `r pkg("ascotraceR")` can simulate an Ascochyta blight infection in a chickpea field following the model developed by Diggle ([2022](https://doi.org/10.1094%2FPHYTO.2002.92.10.1110)).

- `r pkg("epiphy")` is a toolbox for analyzing plant disease epidemics. It provides a common framework for plant disease intensity data recorded over time and/or space.

- `r pkg("epifitter")` provides functions for analysis and visualization of plant disease progress curve data.

- `r pkg("Nematode")` for quantifying common nematode-based ecological indicators, including metabolic footprints, energy flow metrics, and community structure analysis.

- `r pkg("qPRAentry")` supports the entry step of quantitative Pest Risk Assessment by modeling pest introductions via imported commodities. It includes tools and Shiny apps for pathway analysis based on EFSA methodology.

- `r pkg("r4pde")` includes functions for quantifying disease, assessing spatial patterns, and modeling plant disease epidemics based on weather predictors. These tools are intended for teaching and research in plant disease epidemiology. It also contains datasets from the book "R for Plant Disease Epidemiology" (R4PDE).

- _Plant Pathogen Genetics_: `r pkg("hagis")` has functions for analysis of plant pathogen pathotype survey data. Functions provided calculate distribution of susceptibilities, distribution of complexities with statistics, pathotype frequency distribution, as well as diversity indices for pathotypes. Evolution of resistance genes under pesticide pressure can be simulated under different numbers of pests, modes of pest reproduction, resistance loci, number of pesticides and other facets with `r pkg("resevol")`. Populations with mixed clonal/sexual reproductive strategies can be analyzed with `r pkg("poppr")`, which has population genetic analysis tools for hierarchical analysis of partially clonal populations.

### [Rural sociology]{#RuralSoc}

See the task view for `r view("Psychometrics")` for general sociology packages.

- Both the `r view("Survival")` task view and the `r github("OnofriAndreaPG/agriCensData")` package provide tools for working with interval and censored data.

### [Soil science and precision agriculture]{#SoilScience}

- _Spatial_: The `r view("Spatial")` and `r view("SpatioTemporal")` CRAN task views provide extensive resources in spatial statistics. `r pkg("mpspline2")` implements a mass-preserving spline to soil attributes to make continuous down-profile estimates of attributes measured over discrete, often discontinuous depth intervals.

- The `r pkg("sharpshootR")` contains a compendium of utility functions supporting soils survey work including data management, summary, visualisations and conversions.

- For soil pedology, `r pkg("aqp", priority = "core")` provides a general toolkit for soil scientists: specialized data structures, soil profile summary, visualisation, color conversion, and more.
  `r pkg("SoilTaxonomy")` provides functions for parsing soil taxonomic terms.
  `r pkg("pedometrics")` has many utility functions for common analyses of soil data.

- _Soil water_: Soil water retention curves can be calculated by the `r pkg("soilwater")` packages using the [Van Genuchten (1980)](https://doi.org/10.2136/sssaj1980.03615995004400050002x) method for soil water retention and [Mualem (1976)](https://doi.org/10.1029/WR012i003p00513) method for hydraulic conductivity.
- `r pkg("SoilR")` models soil organic matter decomposition in terrestrial ecosystems with linear and nonlinear models. The `r pkg("sorcering")` can be used to model soil organic carbon and soil organic nitrogen and to calculate N mineralisation rates.

- Soil texture triangles can be graphed using `r pkg("soiltexture")` and `r github("Saryace/ggsoiltexture")`; `r pkg("soiltexture")` can also classify and transform soil texture data.

- `r pkg("QI")` can be used to calculate potassium intensity and exchangeability.

- `r pkg("DMMF")` implements the daily based Morgan-Morgan-Finney (DMMF) soil erosion model ([Choi 2017](https://doi.org/10.3390%2Fw9040278)) for estimating surface runoff and sediment budgets from a field or a catchment on a daily basis.

- `r pkg("OBIC")` calculate the [Open Bodem Index](https://www.openbodemindex.nl/), a method to evaluate the quality of soils of agricultural fields in The Netherlands and the sustainability of the current agricultural practices.

- _Soil Fertility Testing_: `r pkg("soiltestcorr")` has functions for conducting correlation analysis between soil test values and crop yield data. `r pkg("SoilTesting")` provides functions for calculating soil mineral concentrations from analytical lab results.

- The [suitability](https://www.fao.org/land-water/databases-and-software/crop-information/en/) of specific soils for crop production can be analyzed using `r pkg("soilassessment")`, including soil fertility classes, soil erosion models and soil salinity classification.
  Suitability requirements are for crops grouped into cereal crops, nuts, legumes, fruits, vegetables, industrial crops, and root crops.

- `r pkg("pacu")` (Precision Agriculture Computational Utilities) streamlines common precision-ag workflows: it fetches and processes Sentinel-2 imagery or on-demand vegetation-index statistics, pulls and visualizes historical weather data, and cleans, smooths, and spatially evaluates combine yield-monitor datasets.

#### [Remote sensing]{#remotesensing}

- `r pkg("spectralR")` can be used to access and process Sentinel 2 Level 2A satellite mission optical bands pixel data, obtained from the [Google Earth Engine](https://earthengine.google.com/).
  `r github("ropensci/rsat")` and `r pkg("satellite")` can be used to process remote sensing data.

- Agriculture image features from spectral data can extracted with `r pkg("agrifeature")`.
  It has functions to calculate gray level co-occurrence matrix (GLCM), RGB-based vegetative index (RGB VI) and normalized difference vegetation index (NDVI).

- Experimental units (e.g. plots) can be obtained from spectral images using `r pkg("rPAex")`. `r pkg("lue")` implements the light Use efficiency Model to estimate biomass and yield. Leaf area index and soil moisture from microwave backscattering data based on the [WCM model](https://doi.org/10.1016%2F0034-4257%2893%2990053-Z) can be calculated with the `r pkg("WCM")` package.

- The `r pkg("mapsRinteractive")` package provides functions for working with soil point data in raster format.

### [Weed science]{#WeedScience}

For ecological studies and analytical applications, the `r view("Environmetrics")` task view provides a list of existing R resources in this topic.

- _Dose Response_: the package `r pkg("drc", priority = "core")` offers versatile model fitting and after-fitting functions for dose-response curves.

- `r pkg("drcte")` provides a framework for non-parametric and parametric time-to-event models in agriculture, especially analysis of germination and emergence data.

- `r pkg("PROSPER")` is a package for simulating weed population dynamics at the individual and population level under a range of conditions including herbicide resistance and herbicide pressure.

- `r pkg("plantTracker")` extracts growth, survival, and local neighborhood density information from repeated, fine-scale maps of organism occurrence.

### Links

- General web-based tutorials: [R for Agricultural Statistics](https://rstats4ag.org/), [AgStats.io](https://agstats.io), [Data Science for Agriculture in R](https://schmidtpaul.github.io/DSFAIR/)
- Instructional materials for classroom or self-instruction: [(Plant Disease) Ecology and Epidemiology in R](https://www.apsnet.org/edcenter/disimpactmngmnt/topc/EcologyAndEpidemiologyInR/Pages/default.aspx)
- Website: [Mixed Models in Agriculture](https://schmidtpaul.github.io/MMFAIR/)
- [INLA](https://www.r-inla.org/) is an R package that conducts "approximate Bayesian inference for latent Gaussian models" The most current version of the R package and extensive documentation can be found on their website.
- [MrBeanApp](https://apariciojohan.github.io/MrBeanApp/) is a Shiny app utilizing ASReml to analyse plant breeding experiments with mixed linear models including integrating spatial covariates.
- Additional data sets: the Github repository [agroBioData](https://github.com/OnofriAndreaPG/agroBioData) houses a collection of data sets supporting agriculture and applied biology (note that this is a collection of CSV files and a `.rda` file, not a package)
- [Additional web resources](http://ncss-tech.github.io/AQP/) for accessing and analyzing the National Cooperative Soil Survey
- Book: [_Applied Statistics in Agricultural, Biological, and Environmental Sciences_](https://acsess.onlinelibrary.wiley.com/doi/book/10.2134/appliedstatistics) (2017) edited by B Glaz and KM Yeater
- Book: [_Experimental methods in agriculture_](https://www.statforbiology.com/_statbook/) (2022) by Andrea Onofri and Dario Sacco (In English and Italian)
- Website: [Soil Spectroscopy Manual](https://soilspectroscopy.github.io/ossl-manual/index.html)
- Books published by [ASA/CSSA/SSSA](https://acsess.onlinelibrary.wiley.com/hub/books)
- Books published by the [ASHS](https://ashs.org/store/ListProducts.aspx?catid=337925&ftr=)
- Books published by the [WSSA](https://wssa.net/publications/)
- Books published by the [APS](https://my.apsnet.org/APSStore/)
- Publications by the [ESA](https://online.entsoc.org/esassa/ecssashop.shopping_page)
- Teaching curriculum: [_Crop Climate Change Course_](https://r-forge.r-project.org/projects/cropcc/): materials for the course _Analyzing the Impact of Climate Change on Crops and Varieties_
- Web book: [Plant Disease Epidemiology in R (R4PDE)](https://r4pde.net/)
