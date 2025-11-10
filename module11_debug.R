#1 Reproduce the Error 
set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)
tukey_multiple(test_mat)

#2 Diagnose the Bug
#&& operates solely on individual TRUE/FALSE values (the first element of a vector) and does not work elementwise.

#3 Fix the Code
outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])

#4 Validate Your Fix
corrected_tukey <- function(x) {
  
  if (!is.matrix(x) || !is.numeric(x)) {
    stop("Input x must be a numeric matrix")
  }
  
  outliers <- array(TRUE, dim = dim(x))
  
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  
  outlier.vec <- logical(nrow(x))
  
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  
  return(outlier.vec)
}

Blog Link: r-programming-omareltannir.blogspot.com
