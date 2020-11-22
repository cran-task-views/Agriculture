
## CRAN Task View: Agricultural Analysis

Agriculture encompasses a broad breadth of disciplines. Nearly every package in base R and contributed packages on CRAN are useful to agricultural researchers. 

If you think that some package is missing from the list, please let us know.

**General**

  - *Accessing Data* : 
  Data from the United States Department of Agriculture's National Agricultural Statistical Service 'Quick Stats' web API can be accessed with [rnassqs][]. The USDA's Cropland data layer API can be accessed with [CropScapeR][]. 
  - *Data sets*: 
  [Agridat][] consists of a very large collection of agricultural data sets and example analyses. 
 

**Soil Science**

  - *Pedology* :
    [aqp][] provides a lot of really useful functionality and other placeholder text. 
  - *Spatial Statistics* : 
    You can (and should) refer to the ["Spatial"](https://CRAN.R-project.org/view=Spatial) and   ["Spatio-Temporal"](https://CRAN.R-project.org/view=SpatioTemporal) CRAN task views. 
    
    
**Agronomic Trials**

  - *Experimental Design* : The package [agricolae][] provides extensive resources for the planning and analysis of planned field experiments, . The CRAN task for [ExperimentalDesign](https://cran.rstudio.com/web/views/Econometrics.html) provide additional information on experimental design for a wide variety of research problems. [desplot][desplot] is for plotting maps of agricultural trials laid out in grids. 
  - *Analysis* : 
  The package [gge][] is useful for producing GGE biplots. 
  
**Plant Breeding and Genetics**
  - *QTL analysis* 
  - *Genomic Selection*
  
**Entomology** 

  - [hnp](https://cran.r-project.org/package=hnp) Generates (half-)normal plots with simulation envelopes using different diagnostics from a range of different fitted models. A few example datasets are included.

**Plant Pathology**

  - [epifitter](https://CRAN.R-project.org/package=epifitter) Analysis and visualization of plant disease progress curve data. Functions for fitting two-parameter population dynamics models (exponential, monomolecular, logistic and Gompertz) to proportion data for single or multiple epidemics using either linear or no-linear regression. Statistical and visual outputs are provided to aid in model selection. Synthetic curves can be simulated for any of the models given the parameters. See Laurence V. Madden, Gareth Hughes, and Frank van den Bosch (2007) <doi:10.1094/9780890545058> for further information on the methods.

  - [epiphy](https://CRAN.R-project.org/package=epiphy) A toolbox to make it easy to analyze plant disease epidemics. It provides a common framework for plant disease intensity data recorded over time and/or space. Implemented statistical methods are currently mainly focused on spatial pattern analysis (e.g., aggregation indices, Taylor and binary power laws, distribution fitting, SADIE and mapcomp methods). See Madden LV, Hughes G, van den Bosch F (2007, ISBN: 978-089054-354-2) for further information on these methods. Several data sets that were mainly published in plant disease epidemiology literature are also included in this package.
  
  - [hagis](https://CRAN.R-project.org/package=hagis) Analysis of plant pathogen pathotype survey data. Functions provided calculate distribution of susceptibilities, distribution of complexities with statistics, pathotype frequency distribution, as well as diversity indices for pathotypes. This package is meant to be a direct replacement for Herrmann, Löwer, Schachtel's (1999) <doi:10.1046/j.1365-3059.1999.00325.x> Habgood-Gilmour Spreadsheet, 'HaGiS', previously used for pathotype analysis.
  
**Weed Science**

  - [binnednp](https://CRAN.R-project.org/package=binnednp) Kernel density and distribution estimation for interval-grouped data (Reyes, Francisco-Fernandez and Cao 2016, 2017) <doi:10.1080/10485252.2016.1163348>, <doi:10.1007/s11749-017-0523-9>, (Gonzalez-Andujar, Francisco-Fernandez, Cao, Reyes, Urbano, Forcella and Bastida 2016) <doi:10.1111/wre.12216> and nonparametric estimation of seedling emergence indices (Cao, Francisco-Fernandez, Anand, Bastida and Gonzalez-Andujar 2011) <doi:10.1017/S002185961100030X>.

  - [drc](https://CRAN.R-project.org/package=drc) Analysis of dose-response data is made available through a suite of flexible and versatile model fitting and after-fitting functions.
  
  - [PROSPER](https://CRAN.R-project.org/package=PROSPER) An environment to simulate the development of annual plant populations with regard to population dynamics and genetics, especially herbicide resistance. It combines genetics on the individual level (Renton et al. 2011) with a stochastic development on the population level (Daedlow, 2015). Renton, M, Diggle, A, Manalil, S and Powles, S (2011) <doi:10.1016/j.jtbi.2011.05.010> Daedlow, Daniel (2015, doctoral dissertation: University of Rostock, Faculty of Agriculture and Environmental Sciences.)
  
**Crop Modelling**

  - [apsimx](https://CRAN.R-project.org/package=apsimx) The functions in this package inspect, read, edit and run files for 'APSIM' "Next Generation" ('JSON') and 'APSIM' "Classic" ('XML'). The files with an 'apsim' extension correspond to 'APSIM' Classic (7.x) - Windows only - and the ones with an 'apsimx' extension correspond to 'APSIM' "Next Generation". For more information about 'APSIM' see (<https://www.apsim.info/>) and for 'APSIM' next generation (<https://apsimnextgeneration.netlify.app/>).

  - [DSSAT](https://CRAN.R-project.org/package=DSSAT) The purpose of this package is to provide a comprehensive R interface to the Decision Support System for Agrotechnology Transfer Cropping Systems Model (DSSAT-CSM) documented by Jones et al (2003) <https://doi.org/10.1016/S1161-0301(02)00107-7>. The package provides cross-platform functions to read and write input files, run DSSAT-CSM, and read output files.

**Animal Science**


**Food Science**


**Rural Sociology**

**Agricultural Economics**

  - The task views for [Econometrics](https://cran.rstudio.com/web/views/Econometrics.html), [Finance](), and [TimeSeries]() provide information on packages and tools relevant to agriculture economics.

### Related links:

  - [R as GIS for Economists](https://tmieno2.github.io/R-as-GIS-for-Economists/)
  - anything else not already included
  
  
### long list of packages (alphabetised)

[agridat]: https://CRAN.R-project.org/package=agridat 
[apsimx]: https://CRAN.R-project.org/package=apsimx 
[aqp]: https://CRAN.R-project.org/package=aqp 
[binnednp]: https://CRAN.R-project.org/package=binnednp
[CropScapeR]: https://CRAN.R-project.org/package=CropScapeR 
[desplot]: https://CRAN.R-project.org/package=desplot 
[drc]: https://CRAN.R-project.org/package=drc 
[DSSAT]: https://CRAN.R-project.org/package=DSSAT 
[epifitter]: https://CRAN.R-project.org/package=epifitter 
[epiphy]: https://CRAN.R-project.org/package=epiphy 
[gge]: https://CRAN.R-project.org/package=gge 
[hnp]: https://cran.r-project.org/package=hnp 
[PROSPER]: https://CRAN.R-project.org/package=PROSPER 
[rnassqs]: https://CRAN.R-project.org/package=rnassqs 
