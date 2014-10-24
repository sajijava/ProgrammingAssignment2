## This function caches the inversion of a matrix. To same computational time
## 

## This function created a cache for the matrix and the invesion

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setInverse <- function(inv) inverse <<- inv
    getInverse <- function() inverse
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## This function will return the caches inversion to the matrix or calculate the inversion if not found in the cache.

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
    if(!is.null(inverse) ){
        message("getting cached data")
    }else{
        inverse <- solve(x$get())
        x$setInverse(inverse)
    }
    inverse
}
