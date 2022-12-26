## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates special matrix object where the inverse is cached

makeCacheMatrix <- function(x = matrix()) {
    
   ## birth inverse matrix
    t <- NULL

    ## sets matrix
    set <- function( matrix ) {
            m <<- matrix
            t <<- NULL
    }

    ## gets matrix
    get <- function() {
    	## Return the matrix
    	m
    }

    ## sets inverse of matrix
    setInverse <- function(inverse) {
        t <<- inverse
    }

    ## gets the inverse of matrix
    getInverse <- function() {
        ## Return the inverse property
        t
    }

    ## returns list of methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

## returns inverse matrix by calling cached if 'makecachematrix' has been called it retreives the cache
cacheSolve <- function(x, ...) {
        ## return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## returns inverse if set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## gets matrix 
    data <- x$get()

    ## calculates  inverse 
    m <- solve(data) %*% data

    ## sets inverse to the object
    x$setInverse(m)

    ## returns matrix
    m
        
}
