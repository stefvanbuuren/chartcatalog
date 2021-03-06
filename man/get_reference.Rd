% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_reference.R, R/get_reference_call.R
\name{get_reference}
\alias{get_reference}
\alias{get_reference_call}
\title{Obtain the growth reference behind the chart}
\usage{
get_reference(chartcode, yname, chartgrp = get_chartgrp(chartcode))

get_reference_call(chartcode, yname, chartgrp = get_chartgrp(chartcode))
}
\arguments{
\item{chartcode}{The chart code, returned by \code{create_chartcode()}}

\item{yname}{Name of the response variable}

\item{chartgrp}{The chart group. If not specified, it is calculated
automatically.}
}
\value{
\code{get_reference()} returns an object of class \code{reference}.

\code{get_reference_call()} returns a string with the call. Your
library must contain the \code{clopus} package to execute the call by
\code{eval(parse(text = call))}.
}
\description{
Obtain the growth reference behind the chart

Obtain the call to a reference used on a chart
}
\examples{
\dontrun{
ref <- get_reference("NJAA", "hgt")
}
get_reference_call("NJAA", "hgt")
}
\seealso{
\code{\link[clopus]{reference-class}}
}
