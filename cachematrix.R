## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invmatrix <- NULL
        set<-function(y){
                x<<-y
                invmatrix<<-NULL
                
                }
        get<-function() {
             mat   
                }
        setInverse <- function(inv){
                invmatrix<<-inv
        }
        getInverse <- function(){
                invmatrix
        }
        list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverse()
        if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    datamatrix <- x$get()
    m <- solve(datamatrix) %*% datamatrix
    x$setInverse(m)
    m
        
}
