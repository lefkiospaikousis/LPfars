% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_read.R
\name{fars_read}
\alias{fars_read}
\title{Read a csv file into R}
\usage{
fars_read(filename)
}
\arguments{
\item{filename}{The filename to read in}
}
\value{
Thsi function returns a tibble
}
\description{
This is a a function that reads a csv file into R
}
\details{
The function tests wether the file name exists in the current working directory and returns an error message if not.
    It also imports the \code{read_csv} function from package \code{readr}
}
\examples{
\dontrun{
fars_read("data/accident_2013.csv")
}
}
