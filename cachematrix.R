## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invmatrix <- NULL
        ##set the matrix
        set<-function(y){
                x<<-y
                invmatrix<<-NULL
                
                }
        ##get the matrix
        get<-function() {
             mat   
                }
        ##set the inverse of matrix
        setInverse <- function(inv){
                invmatrix<<-inv
        }
        ##get the inverse of matrix
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
        ##check if matrix inverse is calculated and stored
        if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    datamatrix <- x$get()
    m <- solve(datamatrix) %*% datamatrix
    x$setInverse(m)
    m
        
}
