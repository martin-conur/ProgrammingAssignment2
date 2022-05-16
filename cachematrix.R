## Put comments here that give an overall description of what your
## functions do

## Stores the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i<<- inverse
    getinverse <- function() i
    list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Retrieves the inverse of a matrix (if already calculated)
## otherwise, computes it and stores it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
