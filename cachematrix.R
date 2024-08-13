## Put comments here that give an overall description of what your
## functions do
## The two functions allows a user to check if the inverse of a matrix has already been calculated and if it has then it returns that matrix but
## if it has not then it calculates and caches the inverse. This prevents repeated re-calculation of the inverse if it already exists.
## Write a short comment describing this function
## My function below allows a user to pass a matrix as an argument and outputs four functions that the user can then use to manipulate that
## matrix to either overwrite a new matrix, retrieve the existing matrix, store the inverse of the matrix or retrieve the existing inverse.

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## The below function checks if the inverse of a matrix has already been calculcated and if so then returns the inverse and if not 
##it calculates the inverse, stores it and returns it. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
}
