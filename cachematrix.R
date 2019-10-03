## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix create an object containing a matrix and a list of four functions
## cacheSolve could store an inversed matrix in that object

## Write a short comment describing this function

## it can set the matrix; get the matrix; set an inversed matrix; get the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinver <- function(inver) i <<- inver
        getinver <- function() i
        list(set = set, get = get,
             setinver = setinver,
             getinver = getinver)

}


## Write a short comment describing this function

## Check if there is an inversed matrix in that list object,if 
##it exists, retrieve it. If not, inverse the matrix and cache the inversed one. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinver()
        if(!is.null(i)) {
                message("getting inversed matrix")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinver(i)
        i
}





 
