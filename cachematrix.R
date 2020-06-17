## Put comments here that give an overall description of what your
## functions do

m<-NULL
solve_m<-NULL

## Write a short comment describing this function
## store m (parametre of the function) and its inverse (solve_m) 
makeCacheMatrix <- function(x = matrix()) {
  if(!identical(x,m)) {return (cacheSolve(x))}
  else {
    print("already exist")
    return(cacheSolve(m))
  }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(m)) {
    message("getting cached data")
    return(solve_m)
  }
  print("not exist before")
  m<<-x
  solve_m <<- solve(m)
  return(solve_m)
}
