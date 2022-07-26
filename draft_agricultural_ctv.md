
# Proposed CRAN Task View: Agriculture

Agriculture encompasses a broad breadth of disciplines. Many, many package in base R and contributed packages are useful to agricultural researchers. For that reason, this is not exhaustive list of packages useful to agricultural research. This proposed CRAN task view is intended to cover major packages that in most cases, have been developed to support agricultural research and analytical needs. 

Note that some of these packages are on CRAN and others are on GitHub, Bioconductor, or R-forge. 

If you think that some package is missing from the list, please let us know. 

## Packages with general applications

### Agricultural & land use databases 
  
  Data from the United States Department of Agriculture's National Agricultural Statistical Service '[Quick Stats](https://www.nass.usda.gov/Quick_Stats/)' web API can be accessed with [rnassqs][] or with [tidyUSDA][], which also offers some mapping capabilities. The USDA's [Cropland Data Layer](https://nassgeodata.gmu.edu/CropScape/) API can be accessed with [CropScapeR][] and [cdlTools][] provides various utility functions for processing CDL data. The package [rusda][] provides an interface to access the USDA-ARS Systematic Mycology and Microbiology Laboratory (SMML)'s [four databases](https://nt.ars-grin.gov/fungaldatabases/index.cfm): Fungus-Host Distributions, Specimens, Literature and the Nomenclature database. USDA's Agricultural Resource Management Survey ([ARMS](https://www.nass.usda.gov/Surveys/Guide_to_NASS_Surveys/Ag_Resource_Management/)) data API can be accessed with [rarms][]. The USDA's Livestock Mandatory Reporting data API can be accessed with [usdampr][]. [FAOSTAT][] and [faobulk][] can be used to access data from the [FAOSTAT Database](https://www.fao.org/faostat/en/#home) of the Food and Agricultural Organization (FAO) of the United Nations. 
  
  [FedData][] provides access to geospatial data from the United States Soil Survey Geographic ([SSURGO](https://www.nrcs.usda.gov/wps/portal/nrcs/detail/soils/survey/?cid=nrcs142p2_053627)) database, the Global Historical Climatology Network ([GHCN](https://www.ncei.noaa.gov/products/land-based-station/global-historical-climatology-network-daily)), the Daymet gridded estimates of daily weather parameters for North America, the [International Tree Ring Data Bank](https://catalog.data.gov/dataset/international-tree-ring-data-bank-itrdb), and the [National Land Cover Database](https://www.usgs.gov/centers/eros/science/national-land-cover-database#overview). SSURGO data can also be accessed and processed with [XPolaris][]. Most USDA-NRCS soils related databases and APIs can be accessed with [soilDB][]. [SISINTAR][] provides access to SiSINTA (Sistema de información de Suelos del INTA), a soil profile database for Argentina, and functions for processing the data. SILO weather data from the [Queensland DES longpaddock website](https://www.longpaddock.qld.gov.au) can be accessed with [cropgrowdays][]. [febr][] has utilities to access and process data from the [Brazilian Soil Data Repository](https://www.pedometria.org/febr).
  
### Agricultural data sets
  
  [Agridat][] consists of a very large collection of agricultural data sets and example analyses; the package contains a vignette detailing additional data sets and extensive resources to support agricultural analysis. [agritutorial][] provides a collection of agricultural data sets and analysis with particular attention to crop experiments. On GitHub, the repository [agroBioData][] houses a collection of data sets supporting agriculture and applied biology (note that this is a collection of CSV files, not a package). The [soybean nested associated mapping population data set](https://pubmed.ncbi.nlm.nih.gov/28724064/) can be accessed via [SoyNAM][].  [simplePhenotypes][] can be used for simulating pleiotropic, linked and epistatic Phenotypes. USGS county data on fertilizer sales can be accessed with [ggfertilizer][]. The FAOSTAT data set collection on the Food and Agriculture Biomass Input–Output model (FABIO) is available through [fabio][] and described more in detail in [Bruckner (2019)](https://pubs.acs.org/doi/10.1021/acs.est.9b03554). The R-forge subversion repository ['cropcc'](https://r-forge.r-project.org/scm/viewvc.php/pkg/?root=cropcc) hosts several R packages with climate change/cropping data set. Additionally, many  of the agriculture-focused packages listed in this guide also include data sets to illustrate their functionality (e.g. [agricolae][], [AgroTech][], [ZeBook][]). Annual agriculture production data from the Peruvian Integrated System of Agricultural Statistics (SIEA) covering 2004 to 2014 can be accessed with [cropdatape][] 
 
### General analytical packages supporting agricultural research
  
  The packages [nlraa][] and [AgroReg][] provides general linear and nonlinear regression functions specifically for agricultural applications. [agriCensData][] is a flexible package for working with censored data (e.g. time to flowering, instrumentation values below the detection limit, disease scoring). [grapesAgri1][] houses a collection of shiny apps, [GRAPES](https://www.kaugrapes.com/) (General R-shiny based Analysis Platform Empowered by Statistics), that works as a graphical user interface for individuals to upload data files and analyse. Linear models and ANOVA for CRD and RCBD (2-way) model, correlation analysis, exploratory data analysis and other common hypothesis tests are supported. 
  
  [ALUES][] implements methodology developed by the FAO and the International Rice Research Institute for evaluating land suitability for different crop production. [AGPRIS][] (AGricultural PRoductivity in Space) provides functions for different spatial analyses in implemented in [INLA][] and other spatial approaches. The package [KenSyn][] has wxample data sets and analytical code supporting the book [**De L'analyse des Réseaux Expérimentaux à la Méta-analyse**](https://www.quae.com/produit/1514/9782759228164/de-l-analyse-des-reseaux-experimentaux-a-la-meta-analyse) (French) or [**From Experimental Network to Meta-analysis**](https://link.springer.com/book/10.1007/978-94-024-1696-1) (English). 
  
  [Agrotech][] provides functionality for making chemical application calculations and example data sets. 
  

## Discipline-specific packages

### Agricultural economics

  The task views for [Econometrics](https://cran.rstudio.com/web/views/Econometrics.html), [Empirical Finance](https://cran.r-project.org/web/views/Finance.html), and [TimeSeries](https://cran.r-project.org/web/views/TimeSeries.html) provide information on packages and tools relevant to agriculture economics.
  
  Several packages have been developed specifically for agricultural price forecasting. [vmdTDNN][] forecasts univariate time series data using variational mode decomposition based time delay neural network models as described by [Dragomiretskiy 2014](https://doi.org/10.1109/TSP.2013.2288675). [stlELM][] also conducts univariate time series forecasting Univariate time series, using seasonal-trend decomposition procedures based on loess (STL) combined with the extreme learning machine developed by [Xiong et al 2018](https://doi.org/10.1016%2Fj.neucom.2017.11.053). [eemdTDNN][] does the same, utilizing different decomposition based time delay neural network models. For method details, see [Yu et al 2008](https://doi.org/10.1016%2Fj.eneco.2008.05.003). 

### Agrometeorology

The [Hydrology CRAN Task View](https://cran.r-project.org/web/views/Hydrology.html) has many resources for accessing and processing weather and climate data. [Meteor][] provides a set of functions for weather and climate data manipulation to support crop and crop disease modeling. Data from the [Copernicus](https://cds.climate.copernicus.eu/cdsapp#!/dataset/sis-agrometeorological-indicators?tab=overview) data set of agrometeorological indicators can be downloaded and extracted using [ag5Tools][]. The [frost][] package contains a compilation of empirical methods used by farmers and agronomic engineers to predict the minimum temperature to detect a frost event. [agroclim][] contains functions to compute agroclimatic indices useful to zoning areas based on climatic variables and to evaluate the importance of temperature and precipitation for individual crops or in general for agricultural lands. [cropgrowdays][] can be used for calculating growing degree days, cumulative rainfall, number of stress day, mean radiation, evaporatranspiration and other variables. It also can be used to access SILO weather data from the [Queensland DES longpaddock website](https://www.longpaddock.qld.gov.au). Climate crop zones in Brazail can be accessed and calculated with [cropZoning][] using data sets from [TerraClimate][] that are calibrated to weather stations run by the National Meteorological Institute of Brazil. The package [acdcR][] (Agro-Climatic Data by County) provides functions to calculate widely-used county-level variables in agricultural production or agro-climatic and weather analyses. [LWFBrook90R][] provides an implementation of the soil vegetation atmosphere transport (SVAT) model LWF-BROOK90 to calculate daily evaporation (transpiration, interception, and soil evaporation) and soil water fluxes, along with soil water contents and soil water tension of a soil profile covered with vegetation.  

[TerraClimate]: http://www.climatologylab.org/terraclimate.html  
  
### Agronomic trials

#### Experimental design 
  
  The package [agricolae][] provides extensive resources for the planning and analysis of planned field experiments. Designs constructd by [agricolae][] can be visualised with [agricolaeplotr][]. The CRAN task for [ExperimentalDesign](https://cran.rstudio.com/web/views/Econometrics.html) provide additional information on experimental design for a wide variety of research problems. [desplot][] is for plotting maps of agricultural trials laid out in grids. [DiGGer][] was developed for rectangular field trials; it's purpose is to help users determine the optimal experimental design based on the treatment structure and number of replicates.  

#### High throughput phenotyping (HTP)
  
  [statgenHTP][] is for analyzing data from HTP platform experiments, with some functions specifically designed to work with the proprietary software [asreml](https://www.vsni.co.uk/software/asreml). [CropDetectR][] can identify crop rows from image data. 
  
#### Trial analysis
  
  The package [agricolae][] contains functions for analyzing many common designs in agriculture trials such as split plot, lattice, Latin square and some additional functions such AMMI and AUDPC calculations. Trials utilizing an incomplete block design can be analylsed used [ispd][]. [statgenSTA][] has functions for single trial analysis with and without spatial components. The proprietary software [asreml](https://www.vsni.co.uk/software/asreml) provides an R version of their mixed model fitting functions for field trial analysis (note this is not open source and also requires an annual license). CRAN also contains an add-on package [asremlPlus][] that provides several accessory functions to asreml. [INLA][] provides tools for Bayesian inference of latent Gaussian models. It contains functions for modelling spatial variation, such as field experiments or farm locations. The [gosset][] package provides the toolkit for a workflow to analyse experimental agriculture data, from data synthesis to model selection and visualisation. [AgroR][] has general functions and a [shiny app][https://agrorproject.shinyapps.io/agror_shiny/] for analysis of common designs in agriculture: CRD, RCBD and Latin square. 
  
  [SpATS][] can be used to adjust for field spatial variation using [p-splines](http://dx.doi.org/10.1002/bimj.202100212). A localised method of spatial adjustment for unreplicated trials, moving grid adjustment, is implemented with the [mvngGrAd][]. [ClimMobTools][] is the API Client for the [ClimMob](https://climmob.net/) citizen science platform in R. Build for agronomists, [biotools][] can conduct a wide array of multivariate analysis including discriminant analysis, a Mantel test, cluster analysis. It can also estimate the optimal plot size and optimal sampling size to minimize error. 
  
### Animal science

  [usdampr][] provides access to the USDA's Livestock Mandatory Reporting API. Many of the genetic packages described in this resource can also be applied to animal system.
    
### Breeding & quantitative genetics

  See the [Phylogenetics CRAN task view](https://cran.r-project.org/web/views/Phylogenetics.html) describing R packages for taxonomy, community ecology (including microbiome work) and of course, phylogenetics. In addition, the R package repository [Bionconductor](https://www.bioconductor.org/) provides bioinformatics tools for the processing of high-throughput genomic data. [lmDiallel] provides service functions for analysing data sets obtained from diallel experiments, as described in [Onofri 2020](https://doi.org/10.1007%2Fs00122-020-03716-8). [plant breeding][] (available on R-forge: `install.packages("plantbreeding", repos="http://R-Forge.R-project.org")`) provides many convenience functions for working with populations and designs common in plant breeding including dialleles, line testers, augmented trials, the Carolina design, and more. [st4gi][] provides several general functions for genetic improvement of crops. Also, please see the subsection on "genotype-by-environment interactions" for packages integrating environmental and genomic data in an analytical framework. [AlphaSimR][] is an implementation of the [AlphaSim algorithm](doi:10.3835/plantgenome2016.02.0013) in R, providing functions for stochastic modelling of processes common to breeding programs such as selection and crossing. [MoBPS][] has a suite of functions for simulating genetic gain and economic costs in a plant breeding program. [isqg][] provides functions for high performance quantitative genetic simulations using a [bitset-based algorithm](https://doi.org/10.1534%2Fg3.119.400373). 
  
#### Linkage mapping & QTL analysis
  
  There are two notable and long-standing packages: (1) [onemap][], providing MapMaker/EXP like performance and extended functionality, and (2) [qtl][] providing standard functionality for qtl mapping and  accessory functions for simulating crosses. [ASMap][] is for fast linkage mapping with the algorithm 'MSTmap'. [MapRtools][] is another linkage mapping package. A existing linkage map can be visualized with [LinkageMapView][]. For polyploids, the packages [mappoly][] and [polymapR][] can be used for linkage mapping and the packages [qtlpoly][] and [polyqtlR][] can be used for qtl estimation. [diaQTL][] is for QTL and haplotype analysis of diallel populations (diploid and autotetraploid). [statgenMPP][] can conduct QTL mapping in multi-parent populations.  
  
#### GWAS
  
  Genome-wide association study analysis can be conducted with [statgenGWAS][]. GWAS models across very large number of SNPs or observations can be estimated with [rMVP][] and [megaLMM][]. Functions for autotetraploids are provided by [GWASpoly][], and these functions also work in diploid species. [StageWise][] provides functions to conduct a 2-stage GWAS when the underlying phenotypic data are from multiple field trials. Variable selection for ultra-large dimensional GWAS data sets can be done with [bravo][], which implements a Bayesian algorith, selection
of variables with embedded screening [SVEN](https://arxiv.org/abs/2006.07561). ip matrices and [statgenIBD][] can calculate IBD probabilities for biparental, three and four-way crosses.  For polyploids, [polyBreedR][] provides convenience functions to facilitate the use of genome-wide markers for breeding autotetraploid species, and its functionality also extends to diploids.
  
#### Genomic prediction
  
  Packages supporting genetic prediction using mixed models augmented with pedigree or genetic marker data include [sommer][], [rrBLUP][], [BGLR][], [lme4gs][], [lme4qtl][], [pedigreemm][], [qgtools][], [cpgen][], [QTLrel][], and the licensed software [asreml](https://www.vsni.co.uk/software/asreml). Many of these packages have built-in functionality for data preparation steps including data imputation and calculation of the relationship matrices. [breedR][] is a general purpose package for performing quantitative genetic analyses. Genome feature mixed linear models using frequentist and Bayesian approaches can be implemented with [qgg][]. [pedmod][] provides linear modelling functions integrating kinship for categorical outcomes. 
  
  [AGHmatrix][] provides extensive options for calculating pedigree and genomic (additive and dominance) relationships. The [pedigree][] packages provides functionality for ordering pedigrees, calculating and inverting the A matrix and other related tasks. 
  
### Crop growth models & crop modelling

  The [apsimx][] package has functions to read, inspect, edit and run files for APSIM "Next Generation" (json) and APSIM "Classic" (xml). Files with an `.apsim` extension correspond to APSIM Classic, the files with an `.apsimx` extension correspond to APSIM Next Generation. [rapsimng][] works with Next Generation APSIM files. [DSSAT][] provides a comprehensive R interface to the Decision Support System for Agrotechnology Transfer Cropping Systems Model (DSSAT-CSM) documented by [Jones (2003)](https://doi.org/10.1016/S1161-0301(02)00107-7). This package provides cross-platform functions to read and write input files, run DSSAT-CSM, and read output files. The modelling framework [Simplace]( www.simplace.net) (Scientific Impact assessment and Modelling PLatform for Advanced Crop and Ecosystem management) can be accessed using the R package [simplace][]. 
  
  [Meteor][] provides a set of functions for weather and climate data manipulation to support crop and crop disease modeling. [cropDemand][] can be used to estimate crop water demand in Brazilian production regions using the [TerraClimate][] data set. [Evapotranspiration][] can estimate potential and actual evapotranspiration using 21 different models. [metrica][] has many convenience functions for comparing model predictions with ground truth data. [ZeBook][] provides data sets and examples to accompany the book [Working with Dynamic Crop Models](https://www.elsevier.com/books/working-with-dynamic-crop-models/wallach/978-0-12-811756-9). 
  
  [phenorice][] is an R implementation of the [phenorice model](http://dx.doi.org/10.1016/j.rse.2017.03.029) for remote sensing of rice crop production. [phenoriceR][] provides helper functions for processing data from the phenorice model. [Recocrop][] estimates environmental suitability for plants using a limiting factor approach for plant growth following [Hackett (1991)](doi:10.1007/BF00045728). [Rquefts][] provides an implementation of the QUEFTS (Quantitative Evaluation of the Native Fertility of Tropical Soils) model ([Janssen 1990](https://doi.org/10.1016%2F0016-7061%2890%2990021-Z)). [Rwofost] is an implementation of the WOFOST ("World Food Studies") crop growth model ([De Wit 2019](https://doi.org/10.1016%2Fj.agsy.2018.06.018)).
  

### Entomology

  [hnp][] Generates half-normal plots with simulation envelopes using different diagnostics from a range of different fitted models. A few example datasets are included. The package [agriCensData][] provides functions for dealing with censored data. In addition, the [survival CRAN Task View](https://cran.microsoft.com/snapshot/2022-03-27/web/views/Survival.html) list CRAN resources for working with censored data. 
    
### Food science

  For packages supporting sensory studies, see the [Psychometrics CRAN task view](https://cran.r-project.org/web/views/Psychometrics.html). [NutrienTrackeR][] provides convenience functions for calculating nutrient content (macronutrients and micronutrients) of foods using food composition data from several reference databases, including: 'USDA' (United States), 'CIQUAL' (France), 'BEDCA' (Spain) and 'CNF' (Canada). 

### Genotype-by-environment interactions
  
  [statgenGxE][] has several functions for handling various analytical approaches for addressing genotype-by-environment interactions. [IBCF.MTME][] implements item-based collaborative filtering for multi-trait and multi-environment trials. The package [gge][] is useful for producing GGE biplots, while [bayesammi][] can conduct Bayesian estimation of additive main effects multiplicative interaction model. [EnvRtype][] can be used for assembling climate data, data set preparation and environmental classification. [FW][] implements Finlay-Wilkinson regression using a Gibbs sampler; [spFW][] also conducts spatial Finlay-Wilkinson analysis for multi-environmental trials using a Bayesian hierarchical model. A wide vareity of stability analysis statistics can be calculated via [agrostab][] including coefficient of homeostaticity, specific adaptive ability, weighted homeostaticity index, [superiority measure](https://doi.org/10.4141%2Fcjps88-018), [regression on environmental index](https://doi.org/10.2135%2Fcropsci1966.0011183X000600010011x), [Tai's stability parameters](https://doi.org/10.2135%2Fcropsci1971.0011183X001100020006x), [stability variance](https://doi.org/10.1038%2Fhdy.1972.87), ecovalence and other stability parameters. 
  

### Plant pathology

  [epifitter][] provides functions for analysis and visualization of plant disease progress curve data. [epiphy][] is a toolbox for analyzing plant disease epidemics. It provides a common framework for plant disease intensity data recorded over time and/or space. [hagis][] has functions for analysis of plant pathogen pathotype survey data. Functions provided calculate distribution of susceptibilities, distribution of complexities with statistics, pathotype frequency distribution, as well as diversity indices for pathotypes. Populations with mixed clonal/sexual reproductive strategies can be analyzed with [poppr][], which has population genetic analysis tools for hierarchical analysis of partially clonal populations. [ascotraceR][] can simulate an Asochyta blight infection in a chickpea field following the model developed by [Diggle (2022)](https://doi.org/10.1094%2FPHYTO.2002.92.10.1110)). Stochastic disease modelling of plant pathogens incorporating spatial and genetic information can be done with [landsepi][]. Evolution of resistance genes under pesticide pressure ncan be simulated under different numbers of pests, modes of pest reproduction, resistance loci, number of pesticides and other facets with [resevol][]. 
  
  
### Rural sociology

  See the CRAN task view for [Psychometrics](https://cran.r-project.org/web/views/Psychometrics.html) and [SocialScience](https://cran.r-project.org/web/views/SocialSciences.html). Both the [Survival CRAN task view](https://cran.microsoft.com/snapshot/2022-03-27/web/views/Survival.html) and the [agriCensData][] package provide tools for working with interval and censored data. 

### Soil science and precision agriculture
  
  [sharpshootR][] contains a compendium of utility functions supporting soils survey work including data management, summary, visualizations and conversions.For soil pedology, [aqp](https://github.com/ncss-tech/aqp/) provides a general toolkit for soil scientists: specialized data structures, soil profile summary, visualizatio, color conversion, and more. [SoilTaxonomy][] provides functions for parsing soil taxonomic terms. The ["Spatial](https://CRAN.R-project.org/view=Spatial) and [Spatio-Temporal](https://CRAN.R-project.org/view=SpatioTemporal) CRAN task views provide extensive resources in spatial statistics. [pedometrics][] has many utility functions for common analyses of soil data. 
  
  [Soil water retention curves](http://en.wikipedia.org/wiki/Water_retention_curv) can be calculated by the [soilwater][] packages using the Van Genuchten method for soil water retention and Mualem method for hydraulic conductivity. [SoilR][] models soil organic matter decomposition in terrestrial ecosystems with linear and nonlinear models. Soil texture triangles can be graphed using [soiltexture][]; this package can also classify and transform soil texture data.[soiltestcorr][] has functions for conducting correlation analysis between soil test values and crop yield data. [SoilTesting][] provides functions for calculating soil mineral concentrations from analytical lab results. [fertplan][] provides fertilizer recommendations based on soil test results (note this packages is optimized for horticultural crop production in Italy). [DMMF][] implements the daily based Morgan-Morgan-Finney (DMMF) soil erosion model ([Choi et al., 2017](https://doi.org/10.3390%2Fw9040278)) for estimating surface runoff and sediment budgets from a field or a catchment on a daily basis. 
  
 Agriculture image features from spectral data can extracted with[ agrifeature][]. It has functions to calculate gray level oo-occurrence matrix (GLCM), RGB-based begetative index (RGB VI) and normalized difference vegetation index (NDVI). Experimental units (e.g. plots) can be obtained from spectral images using [rPAex][]. [mapsRinteractive][] provides functions for working with soil point data in raster format. The [suitability](https://www.fao.org/land-water/databases-and-software/crop-information/en/) of specific soils for crop production can be analyzed using [soilassessment][], including soil fertility classes, soil erosion models and soil salinity classification. Suitability requirements are for crops grouped into cereal crops, nuts, legumes, fruits, vegetables, industrial crops, and root crops. [mpsline2][] implements a mass-preserving spline to soil attributes to make continuous down-profile estimates of attributes measured over discrete, often discontinuous depth intervals. 


### Weed science

  The package [drc][] offers versatile model fitting and after-fitting functions for dose-response curves. [LW1949][] implements the Litchefield and Wilcoxon dose-response analysis [1949](http://jpet.aspetjournals.org/content/96/2/99.abstract) using automation. [PROSPER][] is a package for simulating weed population dynamics at the individual and population level under a range of conditions including herbicide resistance and herbicide pressure. For ecological studies and analytical applications, the [CRAN task view for Environmetrics](https://cran.r-project.org/web/views/Environmetrics.html) provides a list of existing R resources in this topic. 
    

## Additional links

### Relevant R-Forge Projects (not otherwise listed in this resource)

* [Global Soil Information Facilities](https://r-forge.r-project.org/projects/gsif): an initiative of the [World Soil Information Institute and Africa Soil Information Service](africasoils.net) (ISRIC) team.  
* [Soil Spectroscopy and Chemometrics](https://r-forge.r-project.org/projects/soilspec/): methods for soil spectroscopy and chemometrics involving spectral data conversion, calibration and prediction methods.  
* [Digital Soil Informatic Tools](https://r-forge.r-project.org/projects/ithir/): quantitative and numerical analysis of soils and phenomena and other information related to soils, with a focus on pedometrics.  
* [Reclim](https://r-forge.r-project.org/projects/reclim/): a collection of weather reduction functions of kinetics for the introductory carbon balance model (ICBM), a compartmental soil organic carbon model.    
* [inspectr](https://r-forge.r-project.org/projects/inspectr/): handling and analysis of Vis-NIR spectra, with a focus on soil science applications.  
* [Crop & Disease Modelling](https://r-forge.r-project.org/projects/cropsim/):  dynamic & mechanistic simulation of crop growth and development, and of plant diseases. 
* [biocro](https://r-forge.r-project.org/projects/biocro/): functions and data for plant and crop modeling. Simulates C4 photosynthesis, biomass production and estimates parameters for plant phyisiological models using optimization techinques and Markov chains.
* [Crop Climate Change Course](https://r-forge.r-project.org/projects/cropcc/): materials for the course "Analyzing the impact of climate change on crops and varieties"

-----------------------------------------------------------------

[acdcR]: https://CRAN.R-project.org/package=acdcR  
[ag5Tools]: https://cran.r-project.org/package=ag5Tools
[AGHmatrix]: https://CRAN.R-project.org/package=AGHmatrix
[agriCensData]: https://github.com/OnofriAndreaPG/agriCensData
[agricolae]: https://CRAN.R-project.org/package=agricolae
[agricolaeplotr]: https://CRAN.R-project.org/package=agricolaeplotr   
[agridat]: https://CRAN.R-project.org/package=agridat 
[AGPRIS]: https://CRAN.R-project.org/package=AGPRIS  
[agriTutorial]: https://CRAN.R-project.org/package=agriTutorial  
[agroBioData]: https://github.com/OnofriAndreaPG/agriCensData
[agroclim]: https://CRAN.R-project.org/package=agroclim  
[AgroR]: https://CRAN.R-project.org/package=AgroR  
[AgroReg]: https://cran.r-project.org/package=AgroReg
[agrostab]: https://CRAN.R-project.org/package=agrostab
[AgroTech]: https://CRAN.R-project.org/package=AgroTech  
[AlphaSimR]: https://cran.r-project.org/package=AlphaSimR
[ALUES]: https://cran.r-project.org/package=ALUES
[apsimx]: https://CRAN.R-project.org/package=apsimx 
[aqp]: https://CRAN.R-project.org/package=aqp 
[ascotraceR]: https://cran.r-project.org/package=ascotraceR
[ASMap]: https://CRAN.R-project.org/package=ASMap
[asremlPlus]: https://CRAN.R-project.org/package=asremlPlus 
[bayesammi]: https://CRAN.R-project.org/package=bayesammi 
[BGLR]: https://CRAN.R-project.org/package=BGLR
[biotools]:  https://CRAN.R-project.org/package=biotools  
[bravo]: https://CRAN.R-project.org/package=bravo   
[breedR]: https://github.com/famuvie/breedR  
[cdlTools]:  https://CRAN.R-project.org/package=cdlTools
[ClimMobTools]: https://CRAN.R-project.org/package=ClimMobTools
[cpgen]: https://github.com/cheuerde/cpgen
[cropdatape]: https://CRAN.R-project.org/package=cropdatape  
[cropDemand]:  https://CRAN.R-project.org/package=cropDemand  
[cropDetectR]: https://CRAN.R-project.org/package=CropDetectR 
[cropgrowdays]: https://CRAN.R-project.org/package=cropgrowdays  
[CropScapeR]: https://CRAN.R-project.org/package=CropScapeR 
[cropZoning]: https://CRAN.R-project.org/package=cropZoning  
[desplot]: https://CRAN.R-project.org/package=desplot 
[diaQTL]: https://github.com/jendelman/diaQTL
[DiGGer]: http://www.nswdpibiom.org/austatgen/software/ 
[DMMF]: https://CRAN.R-project.org/package=DMMF  
[drc]: https://CRAN.R-project.org/package=drc 
[DSSAT]: https://CRAN.R-project.org/package=DSSAT 
[eemdTDNN]: https://CRAN.R-project.org/package=eemdTDNN  
[EnvRtype]: https://github.com/allogamous/EnvRtype
[epifitter]: https://CRAN.R-project.org/package=epifitter
[epiphy]: https://CRAN.R-project.org/package=epiphy
[Evapotranspiration]: https://CRAN.R-project.org/package=Evapotranspiration   
[fabio]: https://github.com/fineprint-global/fabio
[faobulk]: https://github.com/muuankarski/faobulk  
[FAOSTAT]: https://CRAN.R-project.org/package=FAOSTAT  
[febr]:  https://CRAN.R-project.org/package=febr  
[FedData]: https://CRAN.R-project.org/package=FedData
[fertplan]: https://github.com/mbask/fertplan
[frost]: https://github.com/anadiedrichs/frost  
[FW]: https://github.com/lian0090/FW/
[ggfertilizer]: https://github.com/wenlong-liu/ggfertilizer
[gge]: https://CRAN.R-project.org/package=gge 
[gosset]: https://CRAN.R-project.org/package=gosset
[grapesAgri1]: https://cran.r-project.org/package=grapesAgri1  
[GWASpoly]: https://github.com/jendelman/GWASpoly
[hagis]: https://CRAN.R-project.org/package=hagis
[hnp]: https://cran.r-project.org/package=hnp 
[IBCF.MTME]: https://CRAN.R-project.org/package=IBCF.MTME
[INLA]: https://github.com/inbo/INLA  
[ispd]:  https://CRAN.R-project.org/package=ispd  
[isqg]: https://CRAN.R-project.org/package=isqg   
[KenSyn]: https://CRAN.R-project.org/package=KenSyn  
[landsepi]: https://cran.r-project.org/package=landsepi   
[LinkageMapView]: https://CRAN.R-project.org/package=LinkageMapView 
[lmDiallel]:  https://CRAN.R-project.org/package=lmDiallel 
[lme4gs]: https://github.com/perpdgo/lme4GS
[lme4qtl]: https://github.com/variani/lme4qtl
[LWFBrook90R]: https://CRAN.R-project.org/package=LWFBrook90R   
[LW1949]: https://CRAN.R-project.org/package=LW1949   
[mappoly]: https://CRAN.R-project.org/package=mappoly   
[mapsRinteractive]: https://CRAN.R-project.org/package=mapsRinteractive   
[MapRtools]: https://github.com/jendelman/MapRtools
[MCMCglmm]: https://CRAN.R-project.org/package=MCMCglmm
[MegaLMM]: https://github.com/deruncie/MegaLMM/
[meteor]: https://CRAN.R-project.org/package=meteor
[metrica]: https://CRAN.R-project.org/package=metrica
[MoBPS]: https://github.com/tpook92/mobps  
[mpspline2]: https://CRAN.R-project.org/package=mpspline2  
[mvngGrAd]: https://cran.r-project.org/package=mvngGrAd
[nlraa]: https://cran.r-project.org/package=nlraa
[NutrienTrackeR]: https://CRAN.R-project.org/package=NutrienTrackeR
[onemap]: https://CRAN.R-project.org/package=onemap
[pedigree]: https://CRAN.R-project.org/package=pedigree 
[pedigreemm]: https://CRAN.R-project.org/package=pedigreemm  
[pedmod]:  https://CRAN.R-project.org/package=pedmod  
[pedometrics]: https://CRAN.R-project.org/package=pedometrics  
[phenorice]: https://github.com/cropmodels/phenorice
[phenoriceR]: https://github.com/lbusett/phenoriceR
[plantbreeding]: https://r-forge.r-project.org/projects/plantbreeding/
[polyBreedR]: https://github.com/jendelman/polyBreedR
[polymapR]: https://CRAN.R-project.org/package=polymapR
[polyqtlR]: https://CRAN.R-project.org/package=polyqtlR 
[poppr]: https://cran.r-project.org/package=poppr
[PROSPER]: https://CRAN.R-project.org/package=PROSPER 
[qgg]: https://CRAN.R-project.org/package=qgg  
[qgtools]: https://CRAN.R-project.org/package=qgtools
[qtl]: https://CRAN.R-project.org/package=qtl
[qtlpoly]: https://CRAN.R-project.org/package=qtlpoly
[QTLrel]: https://CRAN.R-project.org/package=QTLRel  
[rapsimng]: https://CRAN.R-project.org/package=rapsimng
[rarms]: https://CRAN.R-project.org/package=rarms 
[Recocrop]: https://CRAN.R-project.org/package=Recocrop 
[resevol]: https://CRAN.R-project.org/package=resevol  
[rMVP]: https://CRAN.R-project.org/package=rMVP
[rnassqs]: https://CRAN.R-project.org/package=rnassqs 
[rPAex]: https://CRAN.R-project.org/package=rPAex  
[Rquefts]: https://CRAN.R-project.org/package=Rquefts
[rrBLUP]: https://CRAN.R-project.org/package=rrBLUP
[rusda]:  https://CRAN.R-project.org/package=rusda
[Rwofost]: https://CRAN.R-project.org/package=Rwofost
[sharpshootR]: https://CRAN.R-project.org/package=sharpshootR
[simplace]: https://github.com/gk-crop/simplace_rpkg  
[simplePHENOTYPES]: https://github.com/samuelbfernandes/simplePHENOTYPES
[SISINTAR]: https://github.com/INTA-Suelos/SISINTAR  
[sommer]: https://CRAN.R-project.org/package=sommer  
[soilassessment]: https://CRAN.R-project.org/package=soilassessment   
[soilDB]: https://CRAN.R-project.org/package=soilDB  
[SoilR]: https://CRAN.R-project.org/package=SoilR 
[SoilTaxonomy]: https://CRAN.R-project.org/package=SoilTaxonomy
[soiltestcorr]: https://CRAN.R-project.org/package=soiltestcorr
[SoilTesting]: https://CRAN.R-project.org/package=SoilTesting  
[soilwater]: https://CRAN.R-project.org/package=soilwater   
[SoyNAM]: https://CRAN.R-project.org/package=SoyNAM
[spFW]: https://CRAN.R-project.org/package=spFW 
[SpATS]: https://CRAN.R-project.org/package=SpATS 
[st4gi]: https://github.com/reyzaguirre/st4gi
[StageWise]: https://github.com/jendelman/StageWise
[statgenGWAS]: https://CRAN.R-project.org/package=statgenGWAS
[statgenGxE]: https://CRAN.R-project.org/package=statgenGxE 
[statgenHTP]:	https://CRAN.R-project.org/package=statgenHTP
[statgenIBD]:	https://CRAN.R-project.org/package=statgenIBD
[statgenMPP]:	https://CRAN.R-project.org/package=statgenMPP
[statgenSTA]: https://CRAN.R-project.org/package=statgenSTA
[stlELM]: https://CRAN.R-project.org/package=stlELM   
[tidyUSDA]: https://CRAN.R-project.org/package=tidyUSDA
[usdampr]: https://CRAN.R-project.org/package=usdampr
[vmdTDNN]: https://github.com/cran/vmdTDNN   
[Xpolaris]: https://github.com/lhmrosso/XPolaris
[ZeBook]: https://CRAN.R-project.org/package=ZeBook  

