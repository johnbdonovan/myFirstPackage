#' Random Forest cross-validation
#'
#' This function calculates MSE erros of a random forest prediction of given
#'   data.
#'
#' @param train Data set to train model on
#' @param k Numeric input representing the number of folds to be use as
#'   parameters
#' @keywords prediction
#'
#' @return List of numeric representing the average MSE error across the folds.
#'
#' @export
my_rf_cv <- function(train, k) {
  # Creates a fold vector to seperate data
  folds <- sample(rep(1:k, length = nrow(train)))
  # Initializes an empty vector to store MSE
  MSE <- numeric(length = k)

  for (i in 1:k) {
    # Specifies training data based on folds
    data_train <- train[folds != i,]
    # Specifies test data based on folds
    data_test <- train[folds == i,]

    # Generates random forest model
    model <- randomForest(
      formula = lifeExp ~ gdpPercap,
      data = data_train,
      ntree = 100)

    # Calculates and stores predictions for Sepal Length
    predictions <- as.data.frame(predict(model, data_test[, -1]))

    # Calculates MSE based on predictions and test data
    MSE[i] <- colMeans(predictions - data_test[, 1])^2
  }

  # Stores output list of mean MSE
  output <- list("cv_err" = mean(MSE))
  # returns output
  return(output)
}
