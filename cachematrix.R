## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # holds the cached value or NULL if nothing is cached
  # initially nothing is cached so set it to NULL
 
  invMatrix <- NULL
  # store the matrix
  setMatrix<- function(y){
    x<<-y
    invMatrix<-NULL
    
  }
  #return the stored matrix
  
  getMatrix<- function()x
  # cache the given argument 
  
  setinv<- function(invers) invMatrix<<- invers
  getinv<- function()invMatrix
  # return a list. Each named element of the list is a function
  list(setMatrix=setMatrix,getMatrix=getMatrix,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function

# cacheSolve is a function which computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above. If the inverse has already been calculated 
# (and the matrix has not changed), then the cachesolve should retrieve the 
# inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invMatrix<- x$getinv
  if(!is.null(invMatrix)){
    message("getting cached data")
    return(invMatrix)
  }
  data <- x$getMatrix()
 inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
