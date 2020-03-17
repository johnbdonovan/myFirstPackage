test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("my_knn_cv works mathematically", {
  expect_equal(my_knn_cv(my_iris[, -5], my_iris$Species, 2, 1)$train_err, 0)
})
