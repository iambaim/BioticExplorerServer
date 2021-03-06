% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downloadDatabase.R
\name{downloadDatabase}
\alias{downloadDatabase}
\title{Download and parse NMD data for the BioticExplorer database}
\usage{
downloadDatabase(
  years,
  dbPath,
  icesAreaShape = ICESareas,
  cruiseSeries = cruiseSeriesList,
  gearCodes = gearList
)
}
\arguments{
\item{years}{vector of integer specifying the years to be downloaded. The database reaches 1914:2020}

\item{dbPath}{Character string specifying the file path where the database should be located. Must include \code{.monetdb} at the end.}

\item{icesAreaShape}{ICES area shape in SpatialPolygonsDataFrame object. Used for calculating the ICES area for a specific fishstation.}

\item{cruiseSeries}{a data.table object of NMD cruise series list. Used to identify cruise series of a specific mission. See \code{\link{prepareCruiseSeriesList}}.}

\item{gearCodes}{a data.table object of NMD gear code list. Used to make gearname and gearcategory columns. See \code{\link{prepareGearList}}.}
}
\description{
Downloads annual NMD data from the API and writes them as MonetDB database
}
\details{
This function is scarily powerful. Do not run a large number of years unless you think you know what you are doing
}
\author{
Ibrahim Umar, Mikko Vihtakari (Institute of Marine Research)
}
