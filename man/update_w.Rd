% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updates.R
\name{update_w}
\alias{update_w}
\title{update_w}
\usage{
update_w(K, R, S, hyper_delta = 1)
}
\arguments{
\item{K}{The number of site level cluster for each patient level cluster. Should be a vector of length \code{S}}

\item{R}{The current site level clustering membership. Should be a matrix with \code{S} rows.}

\item{S}{The number of patient level clusters.}

\item{hyper_delta}{The hyper-parameter with default value being 1}
}
\value{
The updated weights for site level clusters. Should be a matrix with \code{S} rows.
}
\description{
This function updates the weights for site level clusters
}
\details{
It returns a matrix with 10 columns.
For example, first patient cluster has 2 site level clusters. The first row's first 2 elements give the weights for site level clusters in patient cluster 1. Last 8 elements are NA's
}
\examples{
#Suppose we know the number of patient level cluster is 2,
#one has 2 site level clusters and one has 3.
#Use the default value, 1, for hyper-parameter
update_w(K=c(2,3),R=matrix(c(1,2,2,1,1,2,3,2),nrow=2,byrow=TRUE), S=2)

#To change the hyper-parameter to, for example 2
update_w(K=c(2,3),R=matrix(c(1,2,2,1,1,2,3,2),nrow=2,byrow=TRUE), S=2, hyper_delta = 2)
}
\seealso{
\link{update_RJ} for a complete example for all functions in this package.
}
