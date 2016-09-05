% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readmd.R
\name{readmd2var}
\alias{readmd2var}
\title{Read Model Decisions}
\usage{
readmd2var(mid, number = FALSE)
}
\arguments{
\item{mid}{model id number in Model List 2011(see below for details)}

\item{number}{boolean value. If set to TRUE, the output is in num format.}
}
\value{
prints on the screen a desciption of the selected model
}
\description{
Read Model Decisions
}
\examples{
\dontrun{
# Read model components as either character or numeric vector:
readmd2var(mid = 5, number = FALSE)
readmd2var(mid = 5, number = TRUE)
}

}
