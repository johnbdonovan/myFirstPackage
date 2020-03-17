test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("my_lm works mathematically", {

})
test_that("non formula throws error", {
  expect_error(my_lm(Sepal.Length, my_iris))
})
