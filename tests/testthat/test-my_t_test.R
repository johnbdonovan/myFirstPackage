test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

# within test-my_pow.R
test_that("my_t_test works mathmatically", {
  expect_equal(my_t_test(c(0, 1), "two.sided", 0)$test_stat, 1)
  expect_equal(my_t_test((0), "two.sided", 0)$df, 0)
  expect_equal(my_t_test(c(0, 1), "two.sided", 0)$p_val, 0.5)
  expect_equal(my_t_test(c(0, 1), "less", 0)$p_val, 0.75)
  expect_equal(my_t_test(c(0, 1), "greater", 0)$p_val, 0.25)
})
test_that("non-numeric input throws error", {
  expect_error(my_t_test(c(0, 1), "two.sided:, a string"))
  expect_error(my_t_test("a string", "two.sided", 0))
})
