## Put comments here that give an overall description of what your
## functions do

##makeCacheMatrix creates a list of function relates to what could be done with matix

## Write a short comment describing this function
##The list of function are
        ## set ---- create a matrix y
        ## get ---- retrieves the matrix created
        ## setsolves ---- creates function which iteracts with matrix
        ## getsolves ----- retrieves after setsolves is acted on the matix

makeCacheMatrix <- function(x = matrix()) {
                        s <- NULL
                set <- function(y) {
                        x <<- y
                        s <<- NULL
                }
                get <- function() x
                setsolve <- function(solve) s <<- solve
                getsolve <- function() s
                list(set = set, get = get,
                     setsolve = setsolve,
                     getsolve = getsolve)
        

}


## Write a short comment describing this function
## this function takes the fuction from above fuction and makes the action on the matix

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        if(!is.null(s)) {
                message("getting inversed matrix")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
