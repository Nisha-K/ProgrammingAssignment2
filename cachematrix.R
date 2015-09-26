## There are two functions in this programme - makeCacheMatrix() and cacheSolve()
## makeCacheMatrix() takes the value of the matrix and calculates its inverse.
## cacheSolve() calculates inverse only if its not already calculated by
## makeCacheMatrix() for a given matrix value otherswise it lets the user know 
## that data already present in cache and returns the available inverse matrix


## makeCacheMatrix() has four functions
## set() to initial a matrix and its inverse
## get() to take run time value
## setsolve() to create inverse of the matrix
## getsolve() to extract the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL
    set<-function(y){
        x<<-y
        inv<<-NULL
    }
    get<-function()x
    setsolve<-function(solve)inv<<-solve
    getsolve<-function()inv
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## cacheSolve() functions assigns value from getsolve()
## If inverse value already exisis, it sends message saying "This is cached data" 
## and returns cached inverse matrix
## If inverse doesn't exist then it calculates and returns the inverse matrix 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getsolve()
    if(!is.null(inv)) {
      message("This is cached data")
      return(inv)
    }
    data <- x$get
    inv <- solve(data)
    x$setSolve(inv)
    i
}

x<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=TRUE)
a=makeCacheMatrix(x)
a$get()
cacheSolve(a)
cacheSolve(a)
