## Put comments here that give an overall description of what your
## functions do

## Rather than computing matrix inversion repeatedly, these functions should create matrix object
## that can cache its inverse and then compute the inverse of the special matrix returned.


## Write a short comment describing this function

##This function should create a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
                m<- NULL
                set<-function(y){
                        b<<-y
                        m<<- NULL
                }
                get<- function()b
                setinverse<- function(solve) m<<- solve
                getinverse<- function()m
                list(set = set, get = get, setinverse = setinverse, getinverse= getinverse)
        
}


## Write a short comment describing this function

##This function should compute the inverse of the special matrix returned from makeCacheMatrix.
##If the inverse has already been calculated and has not changed then it should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        m<-b$getinverse()
        if(!is.null(m)){
                message("getting cached reversed matrix")
                return(m)
        } else {
                m<-solve(b$get())
                b$setinverse(m)
                return(m)
        }
}
