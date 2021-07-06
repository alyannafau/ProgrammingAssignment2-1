## This activity harnesses how the inverse of a matrix
## can be best cache or restored in the strategic use of functions.

## makeCacheMatrix: a unique function that enables a matrix to cache its own inverse.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
        
        
}
   
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}       



## cacheSolve: In its restoration by the makeCacheMatrix, it operates as an affirmation of the matrix's inverse.
## From the calculation of the matrix's inverse, cacheSolve steps in to somehow redeem the inverse from the cache.

cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv}
