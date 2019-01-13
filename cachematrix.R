## Put comments here that give an overall description of what your
## functions do

## Set the matrix, get the matrix, set the inverse, get the inverse

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <- inverse
	getinverse <- function() i
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## If the inverse has already been calculated, then cacheSolve should retrieve the cached inverse 

cacheSolve <- function(x, ...) {
     i <- x$getinverse()
     if (!is.null(i)){
     	message("Getting cached data")
     	return(i)
     }
      data <- x$get()
      i <- solve(data,...)
      x$setinverse(i)
      i  
}
