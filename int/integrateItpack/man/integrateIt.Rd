% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/integrateIt.R
\name{integrateIt}
\alias{integrateIt}
\alias{integrateIt,ANY-method}
\title{Adding squared values}
\usage{
integrateIt(x, y, startandend, Rule, ...)
}
\arguments{
\item{x}{A numeric object}

\item{y}{A numeric object with the same dimensionality as \code{x}.}
}
\value{
An object of class Squares containing
 \item{result}{the integrated value}
 \item{x}{The input vector of x's} 
 \item{y}{The input vector of y's}
}
\description{
Finds the sum of squared numbers
}
\note{
This is a very simple function
}
\examples{

myX <- c(20, 3) 
myY <- c(-2, 4.1) 
addSquares(myX, myY)
}
\seealso{
\code{\link{print}}
}
\author{
Lim
}
