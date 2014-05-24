## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getmean()
	if(!is.null(x)){
		message('getting cached inverse')
		return(m)
	}
	
	data <- x$get()
	i <- solve(data,...)
	x$setmean(i)
	i
}
