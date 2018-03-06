#' Adding squared values
#'
#' Finds the sum of squared numbers
#'
#' @param x A numeric object
#' @param y A numeric object with the same dimensionality as \code{x}.
#'
#' @return An object of class Squares containing
#'  \item{result}integreated value}
#' @author Lim
#' @note This is a very simple function
#' @examples
#' 
#' myX <- c(20, 3) 
#' myY <- c(-2, 4.1) 
#' addSquares(myX, myY)
#' @seealso \code{\link{print}}
#' @rdname print
#' @aliases print,ANY-method
#' @export
setGeneric(name="print",
           def=function(x,y,startandend,Rule, ...)
           {standardGeneric("print")}
)
#' @export
setMethod(f="print",
          definition=function(x,y,startandend=c(a,b),Rule, ...){
            x<-matrix(x,nrow=1)
            y<-matrix(y,nrow=1)
            if (Rule=="Trap"){
              y_1<-y*2
              y_1[1]<-y[1]
              y_1[ncol(y)]<-y[ncol(y)]
              h<-(startandend[2]-startandend[1]+1)/ncol(x)
              t<-h/2*(y_1)
              x<-as.vector(x)
              y<-as.vector(y)
              return(result=sum(t))
            }
            if (Rule=="Simpson"){
              y_1<-y
              for (i in 1:ncol(y)){
                if((i %% 2) == 0){
                  y_1[i]<-y[i]*4} 
                else {y_1[i]<-y[i]*2}}
              y_1[1]<-y[1]
              y_1[ncol(y)]<-y[ncol(y)]
              h<-(startandend[2]-startandend[1]+1)/ncol(x)
              t<-h/3*(y_1)
              x<-as.vector(x)
              y<-as.vector(y)
              return(result=sum(t))}
          }
)


