## To inverse a 2x2 matrix stored in makeCacheMatrix type object and store it in cache. Then pass the object into cacheSolve function to calculate its inverse if it has not yet been calculated and stored in the cache. Else, retrieve result from cache and return it.

## To store and retrieve a the matrix and it's inverse variables.

makeCacheMatrix <- function(x = matrix()) {
if(sum(dim(x)==c(2,2))==2){ ##If matrix is 2x2 continue, else throw error msg.

m<-NULL
set<-function(y=matrix()){  ##used for changing the matrix x assigned to this object
                         m<<-NULL
			 x<<-y
                         }

get<-function() x    

setinv<-function(inverse) m<<-inverse
getinv<-function() m

list(set=set,get=get,setinv=setinv,getinv=getinv)
			}
else{
print("Invalid input. Must be 2x2 matrix.")
     }
}


## To calculate the inverse matrix if 'm' is NULL or to retrieve from cache if 'm' != NULL.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
if(!is.null(x$getinv())){  ##if m is not null value, there is cached inverse value. Print it onscreen.
print("getting cached value")
print(x$getinv())
                         }
else{
inverse<-solve(x$get())
x$setinv(inverse)
print(x$getinv())
    }
}
