<!-- badges: start -->
  [![Travis build status](https://travis-ci.org/johnbdonovan/myFirstPackage.svg?branch=master)](https://travis-ci.org/johnbdonovan/myFirstPackage)
  [![Codecov test coverage](https://codecov.io/gh/johnbdonovan/myFirstPackage/branch/master/graph/badge.svg)](https://codecov.io/gh/johnbdonovan/myFirstPackage?branch=master)
  <!-- badges: end -->
  
# Installation

To download myFirstPackage package, use the code below
```
# install.packages("devtools")
devtools::install_github("johnbdonovan/myFirstPackage")
library(myFirstPackage)
```
  
# Use

The vignette demonstrates example usage of four main functions. You can see the
by using the following code
```
devtools::install_github("johnbdonovan/myFirstPackage", build_vignette = TRUE, build_opts = c())
library(myFirstPackage)
# Use this to view the vignette in the Demo HTML help
help(package = "myFirstPackage", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "myFirstPackage")
```
