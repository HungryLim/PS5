#' Adding squared values
#'
#' Finds the sum of squared numbers
#'
#' @param x A numeric object
#' @param y A numeric object with the same dimensionality as \code{x}.
#'
#' @return An object of class Squares containing
#'  \item{Trapezoid}{Simpson}{integreated value}
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
setGeneric(name="tolTest",
           def=function(fun, tolerance,rule, start,correct, ...)
           {standardGeneric("tolTest")
             startandend<-c(5,7)
             fun<-function(x){2*x}}
)

#' @export
setMethod(f="tolTest",
          definition=function(fun, tolerance,rule, start,correct, ...){
            startandend<-c(0,10)
            #correct<-integrate(fun, startandend[1],startandend[2])
            if (rule=="Trap"){
              i = 1
              repeat {
                n<-(start+i-1)
                h <- (startandend[2]-startandend[1]) / n
                j <- 1:n - 1
                xj <- startandend[1] + j * h
                trap <- (h / 2) * (fun(startandend[1]) + 2 * sum(fun(xj)) + fun(startandend[2]))
                
                l_tol<-correct$value-as.numeric(tolerance)
                u_tol<-correct$value+as.numeric(tolerance)
                
                # exit if the condition is met
                if (trap < u_tol & trap > l_tol) break
                return(n)
              }
            }
            if (rule=="Simpson"){
              i = 1
              repeat {
                n<-(start+i-1)
                h <- (startandend[2] - startandend[1]) / n
                x<- seq.int(startandend[1], startandend[2], length.out = n + 1)
                xj <-(fun(x))
                xj_1<-xj
                for (i in 1:length(xj)){
                  if((i %% 2) == 0){
                    xj_1[i]<-xj[i]*4} 
                  else {xj_1[i]<-xj[i]*2}}
                xj_1[1]<-xj[1]
                xj_1[length(xj)]<-xj[length(xj)]
                t<-h/3*(xj_1)
                sim<-sum(t)
                
                l_tol<-correct$value-as.numeric(tolerance)
                u_tol<-correct$value+as.numeric(tolerance)
                if (sim < u_tol & sim > l_tol) break
                return(n)
              }
            }
          }
)
