test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("my_lm works mathematically", {
  expect_equal(my_lm(Sepal.Length ~ Sepal.Width, my_iris)$Std.)
})
