## Write a short comment describing this function
## This function creates a special "matrix" object that can 
## cache its inverse
################################################
## This function would do the following:
## Set the Value of a Matrix
## Get the Value of a Matrix
## Set the Value of the Inverse of the Matrix --> inverse of a matrix using solve 
## Get the Value of the Inverse of the Matrix 
################################################
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
        x<<-y
        m<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
        setmatrix=setmatrix,
        getmatrix=getmatrix)
}
################################################
## This function would do the following:
## Get the Inverse of a Matrix. If it has been cached, getMatrix cache using getmatrix
## Else Get the Inverse of a Matrix using solve
################################################
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
