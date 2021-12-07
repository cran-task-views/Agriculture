
## CRAN Task View: Agricultural Analysis

Agriculture encompasses a broad breadth of disciplines. Nearly every package in base R and contributed packages on CRAN are useful to agricultural researchers. 

Note that some of these packages are on CRAN and others are one GitHub, GitLab, Bioconductor, or R-forge. 

If you think that some package is missing from the list, please let us know.

**General**

  - *Accessing Data* : 
  Data from the United States Department of Agriculture's National Agricultural Statistical Service 'Quick Stats' web API can be accessed with [rnassqs][]. The USDA's Cropland data layer API can be accessed with [CropScapeR][]. 
  - *Data sets*: 
  [Agridat][] consists of a very large collection of agricultural data sets and example analyses; the package contains a vignette detailing additional data sets and extensive resources to support agricultural analysis. [agritutorial][] provides a collection of agricultural data sets and analysis with particular attention to crop experiments. On GitHub, the R package [agroBioData][] also includes a collection of data sets supporting agriculture and applied biology. The soybean nested associated mapping project dataset can be accessed via [SoyNAM][].  Many packages also include data sets to illustrate their functionality. [simplePhenotypes][] can be used for simulating pleiotropic, linked and epistatic Phenotypes. USGS county data on fertilizer sales can be accessed with [ggfertilizer][]. The FAOSTAT data set collection on the Food and Agriculture Biomass Input–Output model (FABIO) is available through [fabio][] and described more in detail in [Bruckner et al](https://pubs.acs.org/doi/10.1021/acs.est.9b03554). 
 
  - *Miscellaneous analytical applications for agriculture* 
    [nlraa][] Nonlinear Regression for Agricultural Applications. The CRAN task view on [MissingData](https://cran.r-project.org/web/views/MissingData.html) is helpful for understanding how to impute for missing data. See the [Metanalysis CRAN task view](https://cran.r-project.org/web/views/MetaAnalysis.html) for packages supporting meta-analyses. Additionally, the R suite of linear and non-linear modelling packages, [nlme][], [lme4][], and [MCMCglmm][] are useful for analysing a wide array of studies. The accessory package [emmeans][] works with those packages (and more) to calculated the estimated marginal means for the independent variables. [fertplan][] provides fertilizer recommendations based on soil test results (note this packages is optimized for horticultural crop production in Italy). 

**Soil Science**

  - *Pedology* :
    [aqp](https://github.com/ncss-tech/aqp/), a toolkit for soil scientists: specialized data structures, soil profile summary, visualization, color conversion, and more. [soilDB](https://github.com/ncss-tech/soilDB/), a convenient interface most USDA-NRCS soils related databases and APIs.
  - *Spatial Statistics* : 
    You can (and should) refer to the ["Spatial"](https://CRAN.R-project.org/view=Spatial) and ["Spatio-Temporal"](https://CRAN.R-project.org/view=SpatioTemporal) CRAN task views. 
    
**Agronomic Trials**

  - *Experimental Design* : The package [agricolae][] provides extensive resources for the planning and analysis of planned field experiments. The CRAN task for [ExperimentalDesign](https://cran.rstudio.com/web/views/Econometrics.html) provide additional information on experimental design for a wide variety of research problems. [desplot][desplot] is for plotting maps of agricultural trials laid out in grids. 
  - *Analysis* : The package [agricolae][] contains functions for analyzing many common designs in agriculture trials such as split plot, lattice, Latin square and some additional functions such AMMI and AUDPC calculations. [statgenSTA][] has functions for single trial analysis with and without spatial components. The proprietary software [asreml](https://www.vsni.co.uk/software/asreml) provides an R version of their mixed model fitting functions for field trial analysis (note this is not open source and also requires an annual license). CRAN also contains an add-on package [asremlPlus][] that provides several accessory functions to asreml. 
  
  - *Genotype-by-environment*: The package [statgenGxE][] has several functions for handling various analytical approaches for addressing genotype-by-environment interactions. [IBCF.MTME][] implements item-based collaborative filtering for multi-trait and multi-environment trials. The package [gge][] is useful for producing GGE biplots. [EnvRtype][] can be used for assembling climate data, data set preparation and environmental classification.  
  
**Plant Breeding and Genetics**

See the CRAN task view for [Genetics](https://cran.r-project.org/web/views/Genetics.html), which describes a broad array of packages supporting statistical genetics. The [Phylogenetics CRAN task view](https://cran.r-project.org/web/views/Phylogenetics.html) describes R packages supporting related topics like taxonomy, community ecology (including microbiome work). In addition, the R package repository [Bionconductor](https://www.bioconductor.org/) provides tools for the analysis and comprehension of high-throughput genomic data. 
  
  - *Linkage Mapping & QTL analysis*  There are two notable and long-standing packages: (1) [onemap][], providing MapMaker/EXP like performance and extended functionality, and (2) [qtl][] providing standard functionality for qtl mapping and  accessory functions for simulating crosses. [ASMap][] is for fast linkage mapping with the algorithm 'MSTmap'. [MapRtools][] is another linkage mapping package. A linkage map can be visualized with [LinkageMapView][]. For polyploids, the packages [mappoly][] and [polymapR][] can be used for linkage mapping and the packages [qtlpoly][] and [polyqtlR][] can be used for qtl estimation. 
  
  -*GWAS*  Genome-wide association study analysis can be conducted with [statgenGWAS][]. GWAS models across very large number of SNPs or observations can be estimated with [rMVP][] and [megaLMM][].
  - *Genomic Selection General Genetic Prediction* Packages supporting genetic prediction from pedigree or genetic marker data include [sommer][], [rrBLUP][], [BGLR][], [lme4gs][], [lme4qtl][] and [pedigreelmm][] and the licensed software [asreml](https://www.vsni.co.uk/software/asreml). Many of these packages have built-in functionality for data preparation steps including data imputation and calculation of the relationship matrices. [AGHmatrix][] provides extensive options for calculating pedigree and genomic (additive and dominance) relationship matrices. [breedR][] is a general purpose package for performing quantitative genetic analyses. 
  
**Entomology** 

  - [hnp][] Generates (half-)normal plots with simulation envelopes using different diagnostics from a range of different fitted models. A few example datasets are included.

**Plant Pathology**

  - [epifitter][] Analysis and visualization of plant disease progress curve data. Functions for fitting two-parameter population dynamics models (exponential, monomolecular, logistic and Gompertz) to proportion data for single or multiple epidemics using either linear or no-linear regression. Statistical and visual outputs are provided to aid in model selection. Synthetic curves can be simulated for any of the models given the parameters. See Laurence V. Madden, Gareth Hughes, and Frank van den Bosch (2007) <doi:10.1094/9780890545058> for further information on the methods.

  - [epiphy][] A toolbox to make it easy to analyze plant disease epidemics. It provides a common framework for plant disease intensity data recorded over time and/or space. Implemented statistical methods are currently mainly focused on spatial pattern analysis (e.g., aggregation indices, Taylor and binary power laws, distribution fitting, SADIE and mapcomp methods). See Madden LV, Hughes G, van den Bosch F (2007, ISBN: 978-089054-354-2) for further information on these methods. Several data sets that were mainly published in plant disease epidemiology literature are also included in this package.
  
  - [hagis][] Analysis of plant pathogen pathotype survey data. Functions provided calculate distribution of susceptibilities, distribution of complexities with statistics, pathotype frequency distribution, as well as diversity indices for pathotypes. This package is meant to be a direct replacement for Herrmann, Löwer, Schachtel's (1999) <doi:10.1046/j.1365-3059.1999.00325.x> Habgood-Gilmour Spreadsheet, 'HaGiS', previously used for pathotype analysis.
  
  - [poppr][] An R package for genetic analysis of populations with mixed (clonal/sexual) reproduction. Provides population genetic analysis tools for hierarchical analysis of partially clonal populations built upon the architecture of the 'adegenet' package. Originally described in Kamvar, Tabima, and Grünwald (2014) <doi:10.7717/peerj.281> with version 2.0 described in Kamvar, Brooks, and Grünwald (2015) <doi:10.3389/fgene.2015.00208>.
  
**Weed Science**

  - [binnednp][] Kernel density and distribution estimation for interval-grouped data (Reyes, Francisco-Fernandez and Cao 2016, 2017) <doi:10.1080/10485252.2016.1163348>, <doi:10.1007/s11749-017-0523-9>, (Gonzalez-Andujar, Francisco-Fernandez, Cao, Reyes, Urbano, Forcella and Bastida 2016) <doi:10.1111/wre.12216> and nonparametric estimation of seedling emergence indices (Cao, Francisco-Fernandez, Anand, Bastida and Gonzalez-Andujar 2011) <doi:10.1017/S002185961100030X>.

  - [drc][] versatile model fitting and after-fitting function for dose-response curves.
  
  - [PROSPER][] An environment to simulate the development of annual plant populations with regard to population dynamics and genetics, especially herbicide resistance. It combines genetics on the individual level (Renton et al. 2011) with a stochastic development on the population level (Daedlow, 2015). Renton, M, Diggle, A, Manalil, S and Powles, S (2011) <doi:10.1016/j.jtbi.2011.05.010> Daedlow, Daniel (2015, doctoral dissertation: University of Rostock, Faculty of Agriculture and Environmental Sciences.)
  
**Crop Modelling**

  - [apsimx][] The functions in this package inspect, read, edit and run files for 'APSIM' "Next Generation" ('JSON') and 'APSIM' "Classic" ('XML'). The files with an 'apsim' extension correspond to 'APSIM' Classic (7.x) - Windows only - and the ones with an 'apsimx' extension correspond to 'APSIM' "Next Generation". For more information about 'APSIM' see (<https://www.apsim.info/>) and for 'APSIM' next generation (<https://apsimnextgeneration.netlify.app/>).

  - [DSSAT][] The purpose of this package is to provide a comprehensive R interface to the Decision Support System for Agrotechnology Transfer Cropping Systems Model (DSSAT-CSM) documented by Jones et al (2003) <https://doi.org/10.1016/S1161-0301(02)00107-7>. The package provides cross-platform functions to read and write input files, run DSSAT-CSM, and read output files.

**Animal Science**
We are unaware of packages specifically serving animal science. Many of the genetic packages described in this resource can also be applied to animal system. 

**Food Science**
  - *Sensorystudies* See the [Psychometrics CRAN task view](https://cran.r-project.org/web/views/Psychometrics.html)

**Rural Sociology**
  - See the CRAN task view for [Psychometrics](https://cran.r-project.org/web/views/Psychometrics.html) and [SocialScience](https://cran.r-project.org/web/views/SocialSciences.html)

**Agricultural Economics**

  - The task views for [Econometrics](https://cran.rstudio.com/web/views/Econometrics.html), [Empirical Finance](https://cran.r-project.org/web/views/Finance.html), and [TimeSeries](https://cran.r-project.org/web/views/TimeSeries.html) provide information on packages and tools relevant to agriculture economics.

### Related links:
*(anything else not already included)*

  - [R as GIS for Economists](https://tmieno2.github.io/R-as-GIS-for-Economists/)
  - [Agricultural & R repos on GitHub](https://github.com/topics/agriculture?l=r)
  
### long list of packages (alphabetised)

[AGHmatrix]: https://CRAN.R-project.org/package=AGHmatrix
[agridat]: https://CRAN.R-project.org/package=agridat 
[agriTutorial]: https://CRAN.R-project.org/package=agriTutorial
[agroBioData]: https://github.com/OnofriAndreaPG/agriCensData
[apsimx]: https://CRAN.R-project.org/package=apsimx 
[aqp]: https://CRAN.R-project.org/package=aqp 
[asremlPlus]: https://CRAN.R-project.org/package=asremlPlus 
[binnednp]: https://CRAN.R-project.org/package=binnednp
[BGLR]: https://CRAN.R-project.org/package=BGLR
[breedR]: https://github.com/famuvie/breedR
[CropScapeR]: https://CRAN.R-project.org/package=CropScapeR 
[desplot]: https://CRAN.R-project.org/package=desplot 
[drc]: https://CRAN.R-project.org/package=drc 
[DSSAT]: https://CRAN.R-project.org/package=DSSAT 
[emmeans]: https://CRAN.R-project.org/package=emmeans
[EnvRtype]: https://github.com/allogamous/EnvRtype
[epifitter]: https://CRAN.R-project.org/package=epifitter
[epiphy]: https://CRAN.R-project.org/package=epiphy 
[fabio]: https://github.com/fineprint-global/fabio
[fertplan]: https://github.com/mbask/fertplan
[ggfertilizer]: https://github.com/wenlong-liu/ggfertilizer
[gge]: https://CRAN.R-project.org/package=gge 
[hagis]: https://CRAN.R-project.org/package=hagis
[hnp]: https://cran.r-project.org/package=hnp 
[IBCF.MTME]: https://CRAN.R-project.org/package=IBCF.MTME
[LinkageMapView]: https://CRAN.R-project.org/package=LinkageMapView 
[lme4]: https://CRAN.R-project.org/package=lme4
[lme4gs]: https://github.com/perpdgo/lme4GS
[lme4qtl]: https://github.com/variani/lme4qtl
[mappoly]: https://CRAN.R-project.org/package=mappoly 
[MapRtools]: https://github.com/jendelman/MapRtools
[MCMCglmm]: https://CRAN.R-project.org/package=MCMCglmm
[MegaLMM]: https://github.com/deruncie/MegaLMM/
[nlme]: https://CRAN.R-project.org/package=nlme
[nlraa]: https://cran.r-project.org/package=nlraa
[pedigreemm]: https://CRAN.R-project.org/package=pedigreemm
[polymapR]: https://CRAN.R-project.org/package=polymapR
[polyqtlR]: https://CRAN.R-project.org/package=polyqtlR 
[poppr]: https://cran.r-project.org/package=poppr
[PROSPER]: https://CRAN.R-project.org/package=PROSPER 
[qtl]: https://CRAN.R-project.org/package=qtl
[qtlpoly]: https://CRAN.R-project.org/package=qtlpoly
[rnassqs]: https://CRAN.R-project.org/package=rnassqs 
[rrBLUP]: https://CRAN.R-project.org/package=rrBLUP
[simplePHENOTYPES]: https://github.com/samuelbfernandes/simplePHENOTYPES
[sommer]: https://CRAN.R-project.org/package=sommer
[soilDB]: https://CRAN.R-project.org/package=soilDB
[soyNAM]: https://CRAN.R-project.org/package=SoyNAM 
[statgenGWAS]: https://CRAN.R-project.org/package=statgenGWAS
[statgenGxE]: https://CRAN.R-project.org/package=statgenGxE 
[statgenSTA]: https://CRAN.R-project.org/package=statgenSTA
[rMVP]: https://CRAN.R-project.org/package=rMVP
