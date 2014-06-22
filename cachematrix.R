## This code contains two functions which should cache the inverse of
## a matrix created and cached in a special matrix object

## makeCacheMatrix creates a matrix object in which to cache the inverse

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
        x<<-y
        m<<-NULL
}
get<-function()x
setmatrix<-function(solve) m<<-solve
getmatrix<-function() m
list(set=set, get=get,
        setmatrix=setmatrix,
        getmatrix=getmatrix)
}
## This function uses solve() to compute the inverse of the matrix

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get
        m<-solve(matrix,...)
        x$setmatrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
