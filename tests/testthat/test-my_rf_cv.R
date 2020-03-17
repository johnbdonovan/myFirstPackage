test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("negative inputs not accepts", {
  expect_error(my_rf_cv(my_gapminder, -2))
})
