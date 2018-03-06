
## Load libraries and set working directory
library(devtools)
library(roxygen2)
library(testthat)
setwd("C:/Users/dell/Dropbox/R_class/int") #This will need to be changed to match your directory

## This is run once when the package strcuture is first created


## At this point put the *.R files into the correcto directories and edit the DESCRIPTION file

## Let's look through the R directory in this order:

# squaresPack-package.r
# Squares.R
# addSquares.R
# subtractSquares.R
# AllSquares-class.R
# allSquares.R

# Now the NAMESPACE

## This can be run many times as the code is updates
current.code <- as.package("integrateItpack")
load_all(current.code)
document(current.code)



check(current.code)


install(pkg=current.code, local=TRUE)
build(current.code, path=getwd())


integrateIt
getMethod(integrateIt, "Trapezoid")

print
getmethod(print, "Simpson")

## View of function
integrateIt




