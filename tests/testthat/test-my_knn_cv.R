test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("my_knn_cv works mathematically", {
  expect_equal(my_knn_cv(my_iris[, -5], my_iris$Species, 1, 2)$train_err, 0)
})
test_that("k = 0 must be at least 1", {
  expect_error(my_knn_cv(my_iris[, -5], my_iris$Species, 2, 1)$train_err)
})
