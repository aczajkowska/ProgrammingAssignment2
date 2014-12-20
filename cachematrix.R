## The script presents two functions: makeCacheMatrix and cacheSolve.

## makeCacheMatrix  - setting new matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(z){
  x<<-z
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)
}

## cacheSolve  - getting a matrix and inverting

cacheSolve <- function(x, ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}