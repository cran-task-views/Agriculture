---
name: Agriculture
topic: Agricultural Science
maintainer: Julia Piaskowski, Adam Sparks, Janet Williams
email: julia.piask@gmail.com
version: 2022-08-01
source: https://github.com/cran-task-views/Agriculture
---


Agriculture encompasses a broad breadth of disciplines. Many package in base R and contributed packages are useful to agricultural researchers. For that reason, this is not an exhaustive list of all packages useful to agricultural research. This CRAN task view is intended to cover major packages that in most cases, have been developed to support agricultural research and analytical needs. 

Note that some of these packages are on CRAN and others are on GitHub, Bioconductor, or R-forge. 

If you think that a package is missing from this list, please let us know by [filing an issue](https://github.com/jpiaskowski/ctv-agriculture/issues/new?template=package_suggestion.md) in the [GitHub repository](https://github.com/IdahoAgStats/ctv-agriculture) (preferred) or by contacting the package maintainers. 

## Packages with general applications

### Agricultural & land use databases 
  
-   **USDA databases**: Data from the United States Department of Agriculture's National Agricultural Statistical Service '[Quick Stats](https://www.nass.usda.gov/Quick_Stats/)' web API can be accessed with `r pkg("rnassqs")` or with `r pkg("tidyUSDA", priority = "core")`, which also offers some mapping capabilities. The USDA's [Cropland Data Layer](https://nassgeodata.gmu.edu/CropScape/) API can be accessed with `r pkg("CropScapeR")` and `r pkg("cdlTools", priority = "core")` provides various utility functions for processing CDL data. The package`r pkg("rusda")` provides an interface to access the USDA-ARS Systematic Mycology and Microbiology Laboratory (SMML)'s [four databases](https://nt.ars-grin.gov/fungaldatabases/index.cfm): Fungus-Host Distributions, Specimens, Literature and the Nomenclature database.  The USDA's Agricultural Resource Management Survey ([ARMS](https://www.nass.usda.gov/Surveys/Guide_to_NASS_Surveys/Ag_Resource_Management/)) data API can be accessed with `r pkg("rarms")`. The USDA's Livestock Mandatory Reporting data API can be accessed with `r pkg("usdampr")`. `r pkg("FAOSTAT")` and `r github("muuankarski/faobulk")` can be used to access data from the [FAOSTAT Database](https://www.fao.org/faostat/en/#home) of the Food and Agricultural Organization (FAO) of the United Nations. 

-   Most USDA-NRCS soils related databases and APIs can be accessed with `r pkg("soilDB")`. 

-   `r pkg("FedData", priority = "core")` provides access to geospatial data from the United States Soil Survey Geographic ([SSURGO](https://www.nrcs.usda.gov/wps/portal/nrcs/detail/soils/survey/?cid=nrcs142p2_053627)) database, the Global Historical Climatology Network ([GHCN](https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily)), the [Daymet](https://daymet.ornl.gov/) gridded estimates of daily weather parameters for North America, the [International Tree Ring Data Bank](https://catalog.data.gov/dataset/international-tree-ring-data-bank-itrdb), and the [National Land Cover Database](https://www.usgs.gov/centers/eros/science/national-land-cover-database#overview). SSURGO data can also be accessed and processed with `r github("lhmrosso/XPolaris")`. 

-   NASA soil moisture active-passive (SMAP) data can be accessed and processed with `r pkg("smapr")`. 

-   `r github("INTA-Suelos/SISINTAR")` provides access to [SiSINTA](http://sisinta.inta.gob.ar/) (Sistema de información de Suelos del INTA), a soil profile database for Argentina, and functions for processing the data. 

-   SILO weather data from the [Queensland DES Longpaddock][] website can be accessed with `r pkg("cropgrowdays")`. 

- `r pkg("febr")` has utilities to access and process data from the [Brazilian Soil Data Repository](https://www.pedometria.org/febr).
  
-   `r pkg("PGRdup")` provides functions to aid the identification of probable/possible duplicates in plant genetic resources collections. 

-   `r pkg("rfieldclimate")` provides functionality and parsers to interact with the [FieldClimate API](https://api.fieldclimate.com/v2/docs/).
  
### Agricultural data sets

Many of the agriculture-focused packages listed in this guide also include data sets to illustrate their functionality (e.g. `r pkg("agricolae")`, `r pkg("AgroTech")`, `r pkg("BGLR")`).  

-   `r pkg("Agridat", priority = "core")` consists of a very large collection of agricultural data sets and example analyses; the package contains a vignette detailing additional data sets and extensive resources to support agricultural analysis. 

-   `r pkg("agritutorial")` provides a collection of agricultural data sets and analysis with particular attention to crop experiments. 

-   The [soybean nested associated mapping population data set](https://pubmed.ncbi.nlm.nih.gov/28724064/) can be accessed via `r pkg("SoyNAM")`.  

-   The FAOSTAT data set collection on the Food and Agriculture Biomass Input–Output model (FABIO) is available through `r github("fineprint-global/fabio")` and described more in detail in [Bruckner (2019)](https://pubs.acs.org/doi/10.1021/acs.est.9b03554)

-   `r github("samuelbfernandes/simplePhenotypes")` can be used for simulating pleiotropic, linked and epistatic phenotypes. 

-   USGS county data on fertilizer sales can be accessed with `r github("wenlong-liu/ggfertilizer")`. 

-   Annual agriculture production data from the Peruvian Integrated System of Agricultural Statistics (SIEA) covering 2004 to 2014 can be accessed with `r pkg("cropdatape")`. 

-   `r pkg("ZeBook")` provides data sets and examples to accompany the book [Working with Dynamic Crop Models](https://www.elsevier.com/books/working-with-dynamic-crop-models/wallach/978-0-12-811756-9)

### General analytical packages supporting agricultural research

-   The packages `r pkg("nlraa", priority = "core")` and `r pkg("AgroReg")` provides linear and nonlinear regression functions specifically for agricultural applications. The package`r pkg("biotools")` can conduct a wide array of multivariate analysis for agronomists including genetic covariance, optimal plot size, tests for spatial dependence, and tests for seed lot heterogeneity. 
-   `r pkg("agriCensData", priority = "core")` is a flexible package for working with censored data (e.g. time to flowering, instrumentation values below the detection limit, disease scoring). 

-   `r pkg("grapesAgri1")` houses a collection of shiny apps, [GRAPES](https://www.kaugrapes.com/) (General R-shiny based Analysis Platform Empowered by Statistics), that works as a graphical user interface for individuals to upload data files and analyse. Linear models and ANOVA for CRD and 2-way RCBD model, correlation analysis, exploratory data analysis and other common hypothesis tests are supported. 

-   `r pkg("ALUES")` implements methodology developed by the FAO and the International Rice Research Institute for evaluating land suitability for different crop production. 

- `r pkg("AGPRIS")` (AGricultural PRoductivity in Space) provides functions for different spatial analyses in implemented in `r github("inbo/INLA")` and other spatial approaches. The package `r pkg("KenSyn")` has example data sets and analytical code supporting the book [**De L'analyse des Réseaux Expérimentaux à la Méta-analyse**](https://www.quae.com/produit/1514/9782759228164/de-l-analyse-des-reseaux-experimentaux-a-la-meta-analyse) (French) or [**From Experimental Network to Meta-analysis**](https://link.springer.com/book/10.1007/978-94-024-1696-1) (English).
  
-   `r pkg("Agrotech")` provides functionality for making chemical application calculations and example data sets. 

## Discipline-specific packages

### Agricultural economics

The task views for [Econometrics](https://CRAN.R-project.org/view=Econometrics), [Empirical Finance](https://CRAN.R-project.org/view=Finance), and [TimeSeries](https://CRAN.R-project.org/view=TimeSeries) provide information on packages and tools relevant to agriculture economics.

-   **Agricultural price forecasting**: `r github("cran/vmdTDNN")` forecasts univariate time series data using variational mode decomposition based time delay neural network models as described by [Dragomiretskiy 2014](https://doi.org/10.1109/TSP.2013.2288675). `r pkg("stlELM")` also conducts univariate time series forecasting univariate time series, using seasonal-trend decomposition procedures based on loess (STL) combined with the extreme learning machine developed by [Xiong et al 2018](https://doi.org/10.1016%2Fj.neucom.2017.11.053). `r pkg("eemdTDNN")` does the same, utilizing different decomposition based time delay neural network models based on [Yu et al 2008](https://doi.org/10.1016%2Fj.eneco.2008.05.003). 

### Agrometeorology

The [Hydrology CRAN Task View](https://cran.r-project.org/web/views/Hydrology.html) has many resources for accessing and processing weather and climate data. 

-   **Data sources**:  Data from the [Copernicus](https://cds.climate.copernicus.eu/cdsapp#!/dataset/sis-agrometeorological-indicators?tab=overview) data set of agrometeorological indicators can be downloaded and extracted using `r pkg("ag5Tools")`. Climate crop zones in Brazil can be accessed and calculated with `r pkg("cropZoning")` using data sets from [TerraClimate][] that are calibrated to weather stations run by the National Meteorological Institute of Brazil. The package `r pkg("acdcR")` (AgroClimatic Data by County) provides functions to calculate United States county-level variables in agricultural production or agroclimatic and weather analyses. 

-   **Data preparation**: `r pkg("Meteor", priority = "core")` provides a set of functions for weather and climate data manipulation to support crop and crop disease modeling. `r pkg("cropgrowdays")` can be used for calculating growing degree days, cumulative rainfall, number of stress day, mean radiation, evapotranspiration and other variables. It also can be used to access SILO weather data from the [Queensland DES longpaddock][] website. `r pkg("agroclim")` contains functions to compute agroclimatic indices useful to zoning areas based on climatic variables and to evaluate the importance of temperature and precipitation for individual crops or in general for agricultural lands.

-   The `r frost("anadiedrichs/frost")` package contains a compilation of empirical methods used by farmers and agronomic engineers to predict the minimum temperature to detect a frost event.  

-   `r pkg("LWFBrook90R")` provides an implementation of the soil vegetation atmosphere transport (SVAT) model LWF-BROOK90 to calculate daily evaporation (transpiration, interception, and soil evaporation) and soil water fluxes, along with soil water contents and soil water tension of a soil profile covered with vegetation.

-   Leaf area index and soil moisture from microwave backscattering data based on the [WCM model](doi:10.1016/0034-4257(93)90053-Z) can be calculated with the `r pkg("WCM")` package.  
  
### Agronomic trials

#### Experimental design 
  
The CRAN task for [ExperimentalDesign](https://cran.rstudio.com/web/views/Econometrics.html) provide additional information on experimental design for a wide variety of research problems.

-   The package `r pkg("agricolae", priority = "core")` provides extensive resources for the planning and analysis of planned field experiments. Designs constructed by `r pkg("agricolae")` can be visualised with `r pkg("agricolaeplotr")`. Agricultural field trials layout can be also be visualised with `r pkg("desplot")`. 

-   The package [DiGGer](http://www.nswdpibiom.org/austatgen/software/) was developed for rectangular field trials; its purpose is to help users determine the optimal experimental design based on the treatment structure and number of replicates.  

-   `r pkg("inti", priority = "core")` provides functionality for experimental design and manipulation and it is focused on [FieldBook][] compatibility. 

#### High throughput phenotyping (HTP)
  
-   `r pkg("statgenHTP")` is for analyzing data from HTP platform experiments, with some functions specifically designed to work with the proprietary software [R-asreml](https://www.vsni.co.uk/software/asreml). 

-   `r pkg("CropDetectR")` can be used to identify crop rows from image data. 

-   `r pkg("FWRGB")` can process plant images for downstream machine learning models to predict fresh biomass. 

-   `r pkg("pliman")` provides tools for image manipulation to quantify plant leaf area, disease severity, number of disease lesions, and obtain statistics of image objects such as grains, pods, pollen, leaves, and more. 
  
#### Trial analysis
  
-   **General analysis**: The package `r pkg("agricolae")` contains functions for analyzing many common designs in agriculture trials such as split plot, lattice, Latin square and some additional functions such AMMI and AUDPC calculations.  The proprietary software [asreml](https://www.vsni.co.uk/software/asreml) provides an R version of their mixed model fitting functions for field trial analysis (note this is not open source and also requires an annual license). CRAN also contains an add-on package `r pkg("asremlPlus")` that provides several accessory functions to asreml. `r github("INLA")` provides tools for Bayesian inference of latent Gaussian models, and it contains functions for modelling spatial variation, such as field experiments or farm locations. The `r pkg("gosset")` package provides the toolkit for a workflow to analyse experimental agriculture data, from data synthesis to model selection and visualisation. `r pkg("AgroR")` has general functions and a [shiny app][https://agrorproject.shinyapps.io/agror_shiny/] for analysis of common designs in agriculture: CRD, RCBD and Latin square. 
  
-   **Spatial analysis**: the `r pkg("statgenSTA")` has functions for single trial analysis with and without spatial components.`r pkg("SpATS")` can be used to adjust for field spatial variation using [p-splines](http://dx.doi.org/10.1002/bimj.202100212). A localised method of spatial adjustment for unreplicated trials, moving grid adjustment, is implemented with `r pkg("mvngGrAd")`. 

-   Trials utilizing an incomplete block design can be analysed used `r pkg("ispd")`.

-   `r pkg("ClimMobTools")` is the API Client for the [ClimMob](https://climmob.net/) citizen science platform in R for agronomic field trials. 
  
### Animal science

The package `r pkg("usdampr")` provides access to the USDA's Livestock Mandatory Reporting API. Many of the genetic packages described in this task view can also be applied to animals.
    
### Breeding & quantitative genetics

See the R package repository [Bionconductor](https://www.bioconductor.org/) for bioinformatics tools to support the processing of high-throughput genomic data. 

-   **General plant breeding functionality**:  `r github("reyzaguirre/st4gi")` and `r pkg("variability")` provides several common utility functions for genetic improvement of crops. Also, please see the subsection on "genotype-by-environment interactions" for packages integrating environmental and genomic data in an analytical framework. `r pkg("gpbStat")` provides functions for common plant breeding analyses including line-by-tester analysis ([Arunachalam 1974](http://repository.ias.ac.in/89299)) and diallel analysis ([Griffing 1956](https://www.publish.csiro.au/bi/pdf/BI9560463)). `r rforge("plantbreeding")` provides many convenience functions for working with populations and designs common in plant breeding including dialleles, line testers, augmented trials, the Carolina design, and more. 

-   `r pkg("lmDiallel")` provides service functions for analysing data sets obtained from diallel experiments, as described in [Onofri 2020](https://doi.org/10.1007%2Fs00122-020-03716-8). 

-   `r pkg("heritability")` implements marker-based estimation of heritability when observations on genetically identical replicates are available. 

-   `r pkg("selection.index")` calculates a selection index using the method described by Smith ([1973](https://doi.org/10.1111%2Fj.1469-1809.1936.tb02143.x)). 
  
-   **Breeding simulations**  `r pkg("AlphaSimR")` is an implementation of the [AlphaSim algorithm](doi:10.3835/plantgenome2016.02.0013) in R, providing functions for stochastic modelling of processes common to breeding programs such as selection and crossing. `r github("tpook92/MoBPS")` has a suite of functions for simulating genetic gain and economic costs in a plant breeding program. `r pkg("isqg")` provides functions for high performance quantitative genetic simulations using a [bitset-based algorithm](https://doi.org/10.1534%2Fg3.119.400373). 
  
#### Linkage mapping & QTL analysis

-   There are several packages focused on [Linkage disequilibrium on Bioconductor](https://bioconductor.org/packages/release/BiocViews.html#___LinkageDisequilibrium)
  
-   There are two notable and long-standing packages for quantitative trait loci (QTL) analysis: (1) `r pkg("onemap")`, providing[ MapMaker/EXP](https://gaow.github.io/genetic-analysis-software/m/mapmakerexp/)-like performance and extended functionality, and (2) `r pkg("qtl", priority = "core")` providing standard functionality for QTL mapping and accessory functions for simulating crosses. `r pkg("ASMap")` is for fast linkage mapping with the algorithm 'MSTmap'. `r github("jendelman/MapRtools")` is another linkage mapping package. 

-   For polyploids, the packages `r pkg("mappoly")` and `r pkg("polymapR")` can be used for linkage mapping and the packages `r pkg("qtlpoly")` and `r pkg("polyqtlR")` can be used for qtl estimation. `r github("jendelman/diaQTL")` is for QTL and haplotype analysis of diallel populations (diploid and autotetraploid). 

-   `r pkg("statgenMPP")` can conduct QTL mapping in multi-parent populations.  

-   Linkage maps can be visualized with `r pkg("LinkageMapView")`. 
  
#### GWAS

-   There are many [GWAS packages on Bioconductor](https://bioconductor.org/packages/release/BiocViews.html#___GenomeWideAssociation).

-   Genome-wide association study analysis can be conducted with `r pkg("statgenGWAS")`. 

-   GWAS models for a very large number of SNPs and/or observations can be estimated with `r pkg("rMVP")` and `r github("deruncie/megaLMM")`. Functions for conducting GWAS in autotetraploids are provided by `r github("jendelman/GWASpoly")`, and these functions also work in diploid species. Variable selection for ultra-large dimensional GWAS data sets can be done with `r pkg("bravo")`, which implements a Bayesian algorithm, selection of variables with embedded screening [SVEN](https://arxiv.org/abs/2006.07561).

-   `r github("jendelman/StageWise")` provides functions to conduct a 2-stage GWAS when the underlying phenotypic data are from multiple field trials.

-    For polyploids, `r github("jendelman/polyBreedR")` provides convenience functions to facilitate the use of genome-wide markers for breeding autotetraploid species, and its functionality also extends to diploids.
  
#### Genomic prediction

-   **General genomic selection packages**: `r github("famuvie/breedR")` is a general purpose package for performing quantitative genetic analyses. Genome feature mixed linear models using frequentist and Bayesian approaches can be implemented with `r pkg("qgg")`. `r pkg("STGS")` implements several genomic selection models for single traits. `r pkg("BWGS")`, "Breed Wheat Genomic Selection", provides a pipeline of functions for conducting genomic selection in hexaploid wheat. 

-   **GBLUP**: Packages supporting genetic prediction using mixed models augmented with pedigree or genetic marker data include `r pkg("sommer", priority = "core")`, `r pkg("rrBLUP")`, `r pkg("BGLR")`, [`lme4gs`](https://github.com/perpdgo/lme4GS/) (this package has special installation instructions), `r github("variani/lme4qtl")`, `r pkg("pedigreemm")`, `r pkg("qgtools")`, `r github("cheuerde/cpgen")`, `r pkg("QTLrel")`, and the licensed software [asreml](https://www.vsni.co.uk/software/asreml). Many of these packages have built-in functionality for data preparation steps including data imputation and calculation of the relationship matrices. 

-   `r pkg("pedmod")` provides linear modelling functions integrating kinship for categorical traits. 

-   `r pkg("GSelection")` implements genomic selection integrating additive and non-additive models. 

-   `r pkg("GSMX")`, multivariate genomic selection, estimates trait heritability and handles overfitting through cross validation. 

-   `r pkg("TSDFG")` can estimate the optimal training population size and composition for genomic selection. 

-   **Multiple environments and traits**: `r pkg("BGGE")` conducts genomic prediction for continuous variables, focused on genotype-by-environment genomic selection models following the methods of [Jarquín 2014](https://doi.org/10.1007%2Fs00122-013-2243-1). `r pkg("BMTME")` builds genomic selection prediction models that an be expanded to multiple traits and environments using Bayesian models developed by Montesinos-Lopéx ([2016](https://doi.org/10.1534%2Fg3.116.032359), [2018a](https://doi.org/10.1534%2Fg3.118.200728), [2018b](https://doi.org/10.2134%2Fagronj2018.06.0362)). 

-   **Kinship and relatedness**:  `r pkg("AGHmatrix", priority = "core")` provides extensive options for calculating pedigree and genomic relationships (additive and dominance). The `r pkg("pedigree")` packages provides functionality for ordering pedigrees, calculating and inverting the pedigree relationship matrix and other related tasks. The `r pkg("statgenIBD")` can calculate IBD probabilities for biparental, three-way and four-way crosses. 
  
### Crop growth models & crop modelling

-   The `r pkg("apsimx", priority = "core")` package has functions to read, inspect, edit and run files for APSIM "Next Generation" (json, `.apsimx`) and APSIM "Classic" (xml, `.apsim`) files. The `r pkg("rapsimng")` works with next generation APSIM files. 

-   `r pkg("DSSAT")` provides a comprehensive R interface to the Decision Support System for Agrotechnology Transfer Cropping Systems Model (DSSAT-CSM) documented by [Jones (2003)](https://doi.org/10.1016/S1161-0301(02)00107-7). This package provides cross-platform functions to read and write input files, run DSSAT-CSM, and read output files. 

-   The modelling framework [Simplace]( www.simplace.net) (Scientific Impact assessment and Modelling Platform for Advanced Crop and Ecosystem management) can be accessed using the R package `r github("gk-crop/simplace_rpkg")`. 
  
-   `r pkg("Meteor")` provides a set of functions for weather and climate data manipulation to support crop and crop disease modelling. 

-   **Crop Water Usage**: `r pkg("cropDemand")` can be used to estimate crop water demand in Brazilian production regions using the [TerraClimate][] data set. `r pkg("Evapotranspiration")` can estimate potential and actual evapotranspiration using 21 different models. 

-   `r pkg("metrica")` has many convenience functions for comparing model predictions with ground truth data. 

-   r github("cropmodels/phenorice")` is an R implementation of the [phenorice model](http://dx.doi.org/10.1016/j.rse.2017.03.029) for remote sensing of rice crop production. `r github("lbusett/phenoriceR")` provides helper functions for processing data from the phenorice model. 

-   `r pkg("Recocrop")` estimates environmental suitability for plants using a limiting factor approach for plant growth following [Hackett (1991)](doi:10.1007/BF00045728). 

-   `r pkg("Rquefts")` provides an implementation of the QUEFTS (Quantitative Evaluation of the Native Fertility of Tropical Soils) model ([Janssen 1990](https://doi.org/10.1016%2F0016-7061%2890%2990021-Z)). 

-   `r pkg("Rwofost")` is an implementation of the WOFOST ("World Food Studies") crop growth model ([De Wit 2019](https://doi.org/10.1016%2Fj.agsy.2018.06.018)).

### Entomology

-   The [survival CRAN Task View](https://CRAN.R-project.org/view=Survival) list CRAN resources for working with censored data. The package `r github("OnofriAndreaPG/agriCensData")` provides functions for dealing with censored data in common agricultural contexts. 

-   `r pkg("hnp")` Generates half-normal plots with simulation envelopes using different diagnostics from a range of different fitted models. A few example data sets are included.   
    
### Food science

-   For packages supporting sensory studies, see the [Psychometrics CRAN task view](https://CRAN.R-project.org/view=Psychometrics). 

-   `r pkg("NutrienTrackeR")` provides convenience functions for calculating nutrient content (macronutrients and micronutrients) of foods using food composition data from several reference databases, including: 'USDA' (United States), 'CIQUAL' (France), 'BEDCA' (Spain) and 'CNF' (Canada). 

### Genotype-by-environment interactions
  
-   `r pkg("statgenGxE")` has functions for handling various analytical approaches for addressing genotype-by-environment interactions. 

-   The package `r pkg("gge")` can generate GGE biplots, while `r pkg("bayesammi")` can conduct Bayesian estimation of additive main effects multiplicative interaction (AMMI) model. 

-   `r github("allogamous/EnvRtype")` can be used for assembling climate data, data set preparation and environmental classification or envirotyping.  

-   `r github("lian0090/FW")` implements Finlay-Wilkinson regression using a Gibbs sampler; `r pkg("spFW")` also conducts spatial Finlay-Wilkinson analysis for multi-environmental trials using a Bayesian hierarchical model. 

-   A wide variety of stability analysis statistics can be calculated via `r pkg("agrostab")` including coefficient of homeostaticity, specific adaptive ability, weighted homeostaticity index, [superiority measure](https://doi.org/10.4141%2Fcjps88-018), [regression on environmental index](https://doi.org/10.2135%2Fcropsci1966.0011183X000600010011x), [Tai's stability parameters](https://doi.org/10.2135%2Fcropsci1971.0011183X001100020006x), [stability variance](https://doi.org/10.1038%2Fhdy.1972.87), ecovalence and other stability parameters. 

-   `r pkg("IBCF.MTME")` implements item-based collaborative filtering for continuous data multi-trait and multi-environment trials following the methods described by [Montesinos-López (2018)](https://acsess.onlinelibrary.wiley.com/doi/10.3835/plantgenome2018.02.0013)

### Plant pathology

- The [Epidemiology task view](https://CRAN.R-project.org/view=Epidemiology) lists relevant package for modelling plant diseases. 

-   **Epidemiology Simulation**: Stochastic disease modelling of plant pathogens incorporating spatial and genetic information can be done with `r pkg("landsepi")`. `r pkg("ascotraceR")` can simulate an Ascochyta blight infection in a chickpea field following the model developed by [Diggle (2022)](https://doi.org/10.1094%2FPHYTO.2002.92.10.1110)).

-   `r pkg("epiphy")` is a toolbox for analyzing plant disease epidemics. It provides a common framework for plant disease intensity data recorded over time and/or space.   

-   `r pkg("epifitter")` provides functions for analysis and visualization of plant disease progress curve data. 

-   **Plant Pathogen Genetics**: `r pkg("hagis")` has functions for analysis of plant pathogen pathotype survey data. Functions provided calculate distribution of susceptibilities, distribution of complexities with statistics, pathotype frequency distribution, as well as diversity indices for pathotypes.Evolution of resistance genes under pesticide pressure can be simulated under different numbers of pests, modes of pest reproduction, resistance loci, number of pesticides and other facets with `r pkg("resevol")`. Populations with mixed clonal/sexual reproductive strategies can be analyzed with `r pkg("poppr")`, which has population genetic analysis tools for hierarchical analysis of partially clonal populations.
  
### Rural sociology

-   See the CRAN task view for [Psychometrics](https://CRAN.R-project.org/view=Psychometrics) for general sociology packages.

-   Both the [Survival CRAN task view](https://CRAN.R-project.org/view=Survival) and the `r pkg("agriCensData")` package provide tools for working with interval and censored data. 

### Soil science and precision agriculture

-   **Spatial**:  The ["Spatial](https://CRAN.R-project.org/view=Spatial) and [Spatio-Temporal](https://CRAN.R-project.org/view=SpatioTemporal) CRAN task views provide extensive resources in spatial statistics. `r pkg("mpsline2")` implements a mass-preserving spline to soil attributes to make continuous down-profile estimates of attributes measured over discrete, often discontinuous depth intervals.
  
-   The `r pkg("sharpshootR")` contains a compendium of utility functions supporting soils survey work including data management, summary, visualisations and conversions.

-   For soil pedology, `r github("aqp", priority = "core")` provides a general toolkit for soil scientists: specialized data structures, soil profile summary, visualisation, color conversion, and more. `r pkg("SoilTaxonomy")` provides functions for parsing soil taxonomic terms.  `r pkg("pedometrics")` has many utility functions for common analyses of soil data. 
  
-   **Soil water**: Soil water retention curves can be calculated by the `r pkg("soilwater")` packages using the [Van Genuchten (1980)](https://doi.org/10.2136/sssaj1980.03615995004400050002x) method for soil water retention and [Mualem (1976)]( https://doi.org/10.1029/WR012i003p00513) method for hydraulic conductivity. Estimation and prediction of parameters of soil hydraulic property models can be accomplished with `r pkg("spsh")`.

-   `r pkg("SoilR")` models soil organic matter decomposition in terrestrial ecosystems with linear and nonlinear models. The `r pkg("sorcering")` can be used to model soil organic carbon and soil organic nitrogen and to calculate N mineralisation rates. 

-   Soil texture triangles can be graphed using `r pkg("soiltexture")`; this package can also classify and transform soil texture data. 

-   `r pkg("QI")` can be used to calculate potassium intensity and exchangeability.

-   `r pkg("DMMF")` implements the daily based Morgan-Morgan-Finney (DMMF) soil erosion model ([Choi, 2017](https://doi.org/10.3390%2Fw9040278)) for estimating surface runoff and sediment budgets from a field or a catchment on a daily basis. 

-   **Soil Fertility Testing**:  `r pkg("soiltestcorr")` has functions for conducting correlation analysis between soil test values and crop yield data. `r pkg("SoilTesting")` provides functions for calculating soil mineral concentrations from analytical lab results. `r github("mbask/fertplan")` provides fertilizer recommendations based on soil test results (note this packages is optimized for horticultural crop production in Italy). 

-   **Remote Sensing**: Agriculture image features from spectral data can extracted with `r pkg("agrifeature")`. It has functions to calculate gray level co-occurrence matrix (GLCM), RGB-based vegetative index (RGB VI) and normalized difference vegetation index (NDVI). Experimental units (e.g. plots) can be obtained from spectral images using `r pkg("rPAex")`. `r pkg("mapsRinteractive")` provides functions for working with soil point data in raster format. 
 
-   The [suitability](https://www.fao.org/land-water/databases-and-software/crop-information/en/) of specific soils for crop production can be analyzed using `r pkg("soilassessment")`, including soil fertility classes, soil erosion models and soil salinity classification. Suitability requirements are for crops grouped into cereal crops, nuts, legumes, fruits, vegetables, industrial crops, and root crops. 

### Weed science

For ecological studies and analytical applications, the [CRAN task view for Environmetrics](https://CRAN.R-project.org/view=Environmetrics) provides a list of existing R resources in this topic. 

-   **Dose Response**:  the package `r pkg("drc", priority = "core")` offers versatile model fitting and after-fitting functions for dose-response curves. `r pkg("LW1949")` implements the Litchefield and Wilcoxon ([1949](http://jpet.aspetjournals.org/content/96/2/99.abstract))dose-response model. 

-   `r pkg("PROSPER")` is a package for simulating weed population dynamics at the individual and population level under a range of conditions including herbicide resistance and herbicide pressure. 

## Additional links

None at this time. 

-----------------------------------------------------------------

[FieldBook]: https://excellenceinbreeding.org/toolbox/tools/field-book
[Queensland DES Longpaddock]: https://www.longpaddock.qld.gov.au
[TerraClimate]: http://www.climatologylab.org/terraclimate.html
