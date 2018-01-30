##Programming Assignment 2 : Coursera

## Below is the function definition of makeCacheMatrix method


makeCacheMatrix <- function(x = matrix()) {
inverse_cached <- NULL
set <- function(new){
x <<- new
inverse_cached <<- NULL
}

get <- function() x

setInverse <- function(inverse){
inverse_cached <<- inverse
}

getInverse <- function() inverse_cached

list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Below is the function definition of cachesSolve method which fetches the value of the inverse of the matrix if already cached, otherwise  calculates the new inverse and returns it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inverse_cached <- x$getInverse()
if(!is.null(inverse_cached)){
message("getting cached data")
return(inverse_cached)
}
matrix_values <- x$get()
inverse_calc <- solve(matrix_values, ...)
x$setInverse(inverse_calc)
inverse_calc
}
