#' K-nearest neighbors cross-validation
#'
#' This function creates a knn model as well as calculating cross-validation
#'   and training errors
#'
#' @param train Data set to train model on.
#' @param cl Vector of values for the true class.
#' @param k_nn Numeric representing the number of neighbors to base model on.
#' @param k_cv The number of folds to be used in the model.
#' @keywords prediction
#'
#' @return List containg vector of predicted classes, and numerics of the
#'   cross-validation and training errors.
#'
#' @export
my_knn_cv <- function(train, cl, k_nn, k_cv) {
  # Creates a fold vector to seperate data
  folds <- sample(rep(1:k_cv, length = nrow(train)))
  # Initializes an empty vector to store cv errors
  cv <- numeric(length = k_cv)

  # Loops to generate training and test sets for each fold
  for (i in 1:k_cv) {
    # Specifies training data based on folds
    data_train <- train[folds != i,]
    # Specifies test data based on folds
    data_test <- train[folds == i,]
    # Specifices training set of classes
    cl_train <- cl[folds != i]
    # Specifices test set of classes
    cl_test <- cl[folds == i]

    # Generates knn predictions
    predictions <- knn(data_train, data_test, cl_train, k_nn)

    # Calculates cv error of current fold
    cv[i] <- sum(predictions != cl_test) / length(cl_test)
  }

  # Calculates and stores mean cv error
  cv_err <- mean(cv)
  # Stores total predictions from model
  class <- knn(train, train, cl, k_nn)
  # Calculates and stores training error
  train_err <- sum((class != cl) / length(cl))
  # Stores outputs as a list
  output <- list("class" = class, "cv_err" = cv_err, "train_err" = train_err)
  # Returns output
  return(output)
}
