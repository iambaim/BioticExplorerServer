% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/indexDatabase.R
\name{indexDatabase}
\alias{indexDatabase}
\title{Index BioticExplorer database}
\usage{
indexDatabase(
  dbPath = "~/Desktop/IMR_db.monetdb",
  dbIndexPath = "~/Desktop/dbIndex.rda",
  fileOnly = TRUE
)
}
\arguments{
\item{dbPath}{Character string specifying the file path where the database should be located. Must include \code{.monetdb} at the end.}

\item{dbIndexPath}{Character string specifying the file path where the database should be saved. Must include \code{.rda} at the end.}

\item{fileOnly}{Logical indicating whether the result should only be saved to a file and not returned. If FALSE, no file is made and the result is returned instead.}
}
\description{
Loads BioticExplorer database and creates an index used by BioticExplorer to save processing time
}
\author{
Mikko Vihtakari, Ibrahim Umar (Institute of Marine Research)
}
