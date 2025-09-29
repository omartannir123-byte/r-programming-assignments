> #Create the matrices
> A <- matrix(1:100, nrow = 10)

> B <- matrix(1:1000, nrow = 10)

> #Inspect dimensions
> dim(A) #Square
[1] 10 10

> dim(B) #Not Square
[1]  10 100

> #Compute inverse and determinant
> # For A
> invA <- solve(A)
Error in solve.default(A) : 
  Lapack routine dgesv: system is exactly singular: U[8,8] = 0
> detA <- det(A)

> detA
[1] 0

> #For B 
> invB <- tryCatch(solve(B), error = function(e) e)

> invB
<simpleError in solve.default(B): 'a' (10 x 100) must be square>

> detB <- tryCatch(det(B),   error = function(e) e)

> detB
<simpleError in determinant.matrix(x, logarithm = TRUE, ...): 'x' must be a square matrix>

Blog link: r-programming-omareltannir.blogspot.com
