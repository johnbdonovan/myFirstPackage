test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("my_lm works mathematically", {
  expect_equal(my_lm(y ~ x, data.frame(x = c(1, 2), y = c(2, 4)))$Estimate,
               c(0, 2))
  expect_equal(my_lm(y ~ x, data.frame(x = c(1, 2), 3, 4,
                                       y = c(0, 0, 0, 0)))$Std.Error,
               c(0, 0))
  expect_equal(my_lm(y ~ x, data.frame(x = c(1, 2), y = c(2, 4)))$t_value,
               c(0, 0))
  expect_equal(my_lm(y ~ x, data.frame(x = c(1, 2, 3, 4, 5),
                                       y = c(5, 4, 3, 2, 1)))$pVal, c(0, 0))
})
test_that("non formula throws error", {
  expect_error(my_lm(Sepal.Length, my_iris))
})
