
<!-- Edit the README.Rmd only!!! The README.md is generated automatically from README.Rmd. -->
fuse: Framework for Understanding Structural Errors ([HTML website](https://cvitolo.github.io/fuse/))
=====================================================================================================

[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.14005.svg)](http://dx.doi.org/10.5281/zenodo.14005) [![status](http://joss.theoj.org/papers/392a55daada04a86f95eaa8da134a28d/status.svg)](http://joss.theoj.org/papers/392a55daada04a86f95eaa8da134a28d)

[![Build Status](https://travis-ci.org/cvitolo/fuse.svg)](https://travis-ci.org/cvitolo/fuse.svg?branch=master) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/cvitolo/fuse?branch=master&svg=true)](https://ci.appveyor.com/project/cvitolo/fuse) [![codecov.io](https://codecov.io/github/cvitolo/fuse/coverage.svg?branch=master)](https://codecov.io/github/cvitolo/fuse?branch=master)

Implementation of the framework for hydrological modelling FUSE described in Clark et al. (2008) and based on the Fortran code provided by M. Clark in 2011. The package consists of two modules: Soil Moisture Accounting module (fusesma.sim) and Gamma routing module (fuserouting.sim). It also contains default parameter ranges (fusesma.ranges and fuserouting.ranges) and three data objects: DATA (sample input dataset), parameters (sample parameters) and modlist (list of FUSE model structures).

### Dependencies

The fuse package, as well as the examples in the vignette, depend on a number of CRAN packages. Check for missing dependencies and install them:

``` r
packs <- c("dplyr", "zoo", "tgp", "stats", "utils", "BH", "Rcpp", "testthat",
           "qualV", "devtools")
new.packages <- packs[!(packs %in% installed.packages()[, "Package"])]
if(length(new.packages)) install.packages(new.packages)
```

Installation
------------

You can install this package from Github with [devtools](https://github.com/hadley/devtools):

``` r
devtools::install_github("cvitolo/fuse")
```

Load the package:

``` r
library("fuse")
```

Usage
-----

The simplest way to test `fuse` is to use the dummy data provided with this package, sample the parameter range using the built-in function `generateParameters()` and run the model with 1 model structure (e.g. TOPMODEL):

``` r
# Load the dummy data
data(DATA)

# Sample the parameter range
parameters <- generateParameters(1)

# Run fuse 
streamflow <- fuse(DATA = DATA, 
                   mid = 60,       # Model structure = TOPMODEL
                   deltim = 1,     # Daily time step
                   ParameterSet = parameters)

plot(streamflow, xlab = "", ylab = "Streamflow [mm/day]")
```

![](README_files/figure-markdown_github/example-1.png)

For details and more complex examples (e.g. multi-model ensemble), please refer to the [vignette](vignettes/fuse_vignette.Rmd).

Fortran users are advised to refer to the latest version of fuse available [here](https://github.com/naddor/fuse).

Meta
----

-   Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
-   Please [report any issues or bugs](https://github.com/cvitolo/fuse/issues).
-   License: [GPL-3](https://opensource.org/licenses/GPL-3.0)
-   Get citation information for the `fuse` package in R doing `citation(package = 'fuse')`
