## R Programming - Assigment2


##create a function called "makeCacheMatrix" 
	## This function uses the same example/lines from the Assigment 2
	## In this case, "makeCacheMatrix" create a special object matrix to
	## be used for cacheSolve function to calculate the inverse of that matrix 
	## cached by makeCacheMatrix. 


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

## Similarly, "cacheSolve" is based in the script of cachemea
	## cacheSolve return the inverse matrix estimated with "makeCacheMatrix" this is the fist time, the matrix inverse
	## If the matri inverse has been esttime, cacheSolve returns the inverse matrix
	## If it is the firs time, it estimates the inverse, cached, and return it
cacheSolve <- function(x=matrix(), ...) {
	m<-x$getmatrix()
	if(!is.null(m)){
      	message("getting cached data")
      	return(m)
    	}
    	matrix <- x$get() 
    	m<-solve(matrix, ...)
    	x$setmatrix(m)
   	m
}

