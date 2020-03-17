#' T-Test function
#'
#' This function conducts a t-test on given data
#'
#' @param x Data on which t-test is to be conducted.
#' @param alternative String of "two.sided", "less", or "greater" to designate
#'   alternative hypothesis.
#' @param mu Numeric input designating the value of the null hypothesis.
#' @keywords inference
#'
#' @return List containing the numerics representing test statistic and degrees
#'   of freedom, the alternative hypothesis, and a numeric of the p-value
#'
#' @examples
#' my_t_test(my_gapminder$lifeExp, "two.sided", 60)
#' my_t_test(1:100, "two.sided", 60)
#'
#'my_t_test((0), "two.sided", 0)$test_stat
#'my_t_test((0), "two.sided", 0)$df
#'my_t_test((0), "two.sided", 0)$alternative
#'my_t_test((0), "two.sided", 0)$p_val
#'my_t_test((1), "less", 0)$test_stat
#'my_t_test((1), "greater", 0)$test_stat
#' @export
my_t_test <- function(x, alternative, mu) {
  # Stores degrees of freedom
  df <- length(x) - 1
  # Stores test statistic value
  test_stat <- (mean(x) - mu) / (sd(x) / sqrt(length(x)))
  # Checks for appropriate alternative hypothesis test
  if (str_detect(alternative, "two.sided")) {
    # Stores p-vale of two-sided test
    p_val <- 2 * pt(abs(test_stat), df, lower.tail = FALSE)
  } else if (str_detect(alternative, "less")) {
    # Stores p-value of lower tail, one-sided test
    p_val = pt(test_stat, df, lower.tail = TRUE)
  } else if (str_detect(alternative, "greater")) {
    # Stores p-value of upper tail, one-sided test
    p_val = pt(test_stat, df, lower.tail = FALSE)
  } else {
    # Gives error message if invalid alternative hypothesis was given
    stop('alternative must be specified as "less", "greater", or "two.sided"')
  }
  # Returns list of test statistic, degrees of freedom, alternative hypothesis,
  # and p-value
  return(list("test_stat" = test_stat,
              "df" = df,
              "alternative" = alternative,
              "p_val" = p_val))
}
