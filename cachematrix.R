
## makes a CacheMatrix, which is a list of four functions for
	## getting and setting the value of a matrix, and getting and setting it's inverse
makeCacheMatrix <- function(x = matrix()) {
	
	## the inverse is NULL until it is calculated
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	
	get  <- function() {x}
	setinverse <- function(inverse) {i <<- inverse}
	getinverse <- function() {i}
	
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## returns the inverse of a CacheMatrix
## in order to save comutation time, it saves the value after the
		## first time the inverse is computed
cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	
	## if the inverse has already been calculated, return it immediately
	if(!is.null(i)){
		message('getting cached inverse')
		return(i)
	}
	
	## else, calculate it, save it, and return it
	data <- x$get()
	i <- solve(data,...)
	x$setinverse(i)
	i
}
