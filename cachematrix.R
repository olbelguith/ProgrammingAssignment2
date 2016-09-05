## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(y) {
    x <<- y
    inve <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inve <<- inverse
  getInverse <- function() inve
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## Return a matrix that is the inverse of 'x'
  inve <- x$getInverse()
  if (!is.null(inve)) {
    message("getting cached data")
    return(inve)
  }
  mat <- x$get()
  inve <- solve(mat, ...)
  x$setInverse(inve)
  inve
}
