cacheinverse <- function(x, ...){
  invmatrix <- x$getinverse()
  if(!is.null(invmatrix)){
    message("getting cache")
    return(invmatrix)
  }
  data <- x$getmatrix()
  invmatrix <- solve(data, ...)
  x$setinverse(invmatrix)
  invmatrix
  
}