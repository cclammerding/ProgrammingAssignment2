## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## returns a list of functions that stores a matrix and the cached inverse of 
##the matrix
## functions are:
## set - sets the value of the matrix
## get - gets the value of the matrix
##setInverse - set the value of the inverse of the matric=x in the cache
#getInverse - gets the inverse of the matrix in the cache
makeCacheMatrix <- function(x = matrix()) {
        cache <- NULL
        
        set <- function(value){
                x <<- value
                cache <<- NULL
        }
        
        get <- function() {
                x
        }
        
        setInverse <- function(a) {
                cache <<- solve(a)
        }
        
        getInverse <- function() {
                cache
        }
        
        list(set = set, get = get, 
             setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## calculates the inverse of the matrix created with the makeCacheMatrix
##if it is not null otherwise returns the cache inverse matrix
cacheSolve <- function(y, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inverse <- y$getInverse()
        
        if(!is.null(inverse)){
                message("getting cached data")
                return(inverse)
        }
        
        data <- y$get()
        inverse <- solve(data)
        y$setInverse(m)
        
        inverse
}

