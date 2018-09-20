## Put comments here that give an overall description of what your
## functions do
## Author: Srinivasan Viswanathan
## Date: 09/20/2018
## R Programming Assignment 2
## These functions work together to cache and return the inverse of a matrix 


## makeCacheMatrix returns a vector of functions that can cache a matrix

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
 set <- function(y) {
	 x <<- y
	 inv <<- NULL
	 }
#getfunction
 get <- function() x
 
 #setInverse
setInverse <- function(inverse) inv <<- inverse

#getInverse
getInverse <- function() inv
#return list of functions
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getInverse()
			if (!is.null(inv)) {
				message("getting cached data")
			mat_result <- x$get()
				return(inv) }
			inv <- solve(mat_result, ...)
			x$setInverse(inv)
			inv
}
