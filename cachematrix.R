## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matrix = matrix()) {
  inverse<-NULL
  set<-function(m){
    matrix<<-m
    inverse<-NULL
  }
  get<-function() matrix
  
  setInverse<-function(inv) inverse<<-inv
  getInverse<-function() inverse
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix <- x$get()
  inv <- solve(matrix)
  x$setInverse(inv)
  inv
}
