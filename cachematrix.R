## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creates special matrix object where the inverse is cached

makeCacheMatrix <- function(x = matrix()) {
    
   ## birth inverse matrix
    t <- NULL
    
    set <- function( matrix ) {
            m <<- matrix
            t <<- NULL
    }
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
  
        t
    }

    ## returns list of methods
    list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)

}


## Write a short comment describing this function

## returns inverse matrix by calling cached if 'makecachematrix' has been called it retreives the cache
cacheSolve <- function(x, ...) {
       
    m <- x$getInverse()

  
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## gets matrix 
    stuff <- x$get()
    ## calculates  inverse 
    m <- solve(stuff) %*% data
    ## sets inverse to the object
    x$setInverse(m)
    ## returns matrix
    m
        
}
