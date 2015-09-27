## Put comments here that give an overall description of what your
## functions do

## MakeCacheMatrix is a fucntion that defines a vector with a mean set to null, then calculates the mean based on the values given to arumgent "x" and returns a vector full of functions get, setmatrix and getmatrix. 

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


## checks cache to see if the inverse has already been calculated and if not then calculates it. 

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
     