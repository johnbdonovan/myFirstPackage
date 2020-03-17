#' Linear regression model
#'
#' This function creates a linear regression model based on a given relation
#'   for a given data set.
#'
#' @param formula Formula of proposed relation of data.
#' @param data Data on which regression model is to be formed.
#' @keywords inference
#'
#' @return Data frame containing numeric values of linear model coefficients,
#'   standard errors, t-values, and p-values
#'
#' @export
my_lm <- function(formula, data) {
  # Stores a model frame of the data
  frame <- model.frame(formula, data)
  # Stores the model matrix of the data
  X <- model.matrix(formula, data)
  # Creates a response model from our model frame
  Y <- model.response(frame)
  # Computes and stores the linear model estimates from the model matrix and
  # response
  beta <- solve(t(X) %*% X) %*% t(X) %*% Y
  # Stores degrees of freedom
  df <- length(Y) - length(beta)
  # Stores the standard deviation of the data
  sigma <- sum((Y - X %*% beta)^2 / df)
  # Stores the standard errors of each estimate
  se <- diag(sqrt(sigma * solve(t(x) %*% x)))
  # Stores test-statistics for each estimate
  tStats <- (beta - 0) / se
  # Stores the p-value of each corresponding test-statistic
  pVals <- 2 * pt(abs(tStats), df, lower.tail = FALSE)
  # Returns data frame of estimates of linear model values, along with the
  # standard errors, test-statistics and p-values for each estimate
  return(data.frame("Estimate" = beta,
                    "Std. Error" = se,
                    "t value" = tStats,
                    "Pr(>|t|)" = pVals))
}
