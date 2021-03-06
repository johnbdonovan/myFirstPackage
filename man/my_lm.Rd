% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_lm.R
\name{my_lm}
\alias{my_lm}
\title{Linear regression model}
\usage{
my_lm(formula, data)
}
\arguments{
\item{formula}{Formula of proposed relation of data.}

\item{data}{Data on which regression model is to be formed.}
}
\value{
Data frame containing numeric values of linear model coefficients,
  standard errors, t-values, and p-values
}
\description{
This function creates a linear regression model based on a given relation
  for a given data set.
}
\examples{
my_lm(lifeExp ~ gdpPercap + continent, my_gapminder)
my_lm(Sepal.Length ~ Sepal.Width, my_iris)

}
\keyword{inference}
