% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_t_test.R
\name{my_t_test}
\alias{my_t_test}
\title{T-Test function}
\usage{
my_t_test(x, alternative, mu)
}
\arguments{
\item{x}{Data on which t-test is to be conducted.}

\item{alternative}{String of "two.sided", "less", or "greater" to designate
alternative hypothesis.}

\item{mu}{Numeric input designating the value of the null hypothesis.}
}
\value{
List containing the numerics representing test statistic and degrees
  of freedom, the alternative hypothesis, and a numeric of the p-value
}
\description{
This function conducts a t-test on given data
}
\examples{
my_t_test(my_gapminder$lifeExp, "two.sided", 60)
my_t_test(1:100, "two.sided", 60)

}
\keyword{inference}
