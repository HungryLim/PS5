#' A squared value object 
#' 
#' Object of class \code{} are created by the \code{addSquares} and \code{subtractSquares} functions
#'
#' 
#' An object of the class `SquaresPack' has the following slots:
#' \itemize{
#' \item \code{Trapezoid} The added or subtracted squared values
#' \item \code{x} The first input
#' \item \code{y} the second input 
#' }
#' @author Jacob M. Montgomery: \email{jacob.montgomery@@wustl.edu}
#' @aliases Squares-class initialize,Squares-method getSquares,Squares-method 
#' @rdname Trapezoid
#' @export
setClass(Class="Trapezoid", 
         representation = representation(
           result = "numeric",
           x="numeric",
           y="numeric"
           ),
         prototype = prototype(
           result =  c(),
           x= c(),
           y= c())
)