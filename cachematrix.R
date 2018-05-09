## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  setMatrix<- function(y){
    x<<-y
    invMatrix<-NULL
    
  }
  getMatrix<- function()x
  setinv<- function(invers) invMatrix<<- invers
  getinv<- function()invMatrix
  list(setMatrix=setMatrix,getMatrix=getMatrix,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invMatrix<- x$getinv
  if(!is.null(invMatrix)){
    message("getting cached data")
    return(invMatrix)
  }
}
