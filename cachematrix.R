## Write a pair of functions, namely "makecachematrix" and "cacheSolve" 
## that cache the inverse of a matrix

## MakeCacheMatrix is a function which creates a special "matrix" object that can
## cache its inverse for the input (which is an invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL 
set <- function(y) {
  x<<- NULL
  
}
get <- function () x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function ()inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## CacheSolve is a function which computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## and the matrix has not changed,the cache solve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse () 
  if (!is.null (inv)) {
      message("getting cached result")
    return (inv)
  }
  data <- x$get()
  inv <- solve (data,...)
  x$setinverse (inv)
     inv
