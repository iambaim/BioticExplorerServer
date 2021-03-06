#' @title Compile BioticExplorer database
#' @description Downloads, formulates and indexes BioticExplorer database.
#' @param years vector of integer specifying the years to be downloaded. The database reaches 1900:2020
#' @param dbPath Character string specifying the file path where the database should be located. Must include \code{.monetdb} at the end.
#' @param dbIndexPath Character string specifying the file path where the database should be saved. Must include \code{.rda} at the end.
#' @details Runs the \code{\link{downloadDatabase}} and \code{\link{indexDatabase}} functions. Be aware that running these functions requires access to the IMR intranet, reasonably fast internet and loads of memory. If the function crashes after the \code{\link{downloadDatabase}}, you can still run the \code{\link{indexDatabase}} to save the progress. If it crashes during \code{\link{downloadDatabase}}, you may have to start from scratch. 
#' @import data.table
#' @author Mikko Vihtakari, Ibrahim Umar (Institute of Marine Research)
#' @export

# dbPath = "~/Desktop/IMR_db.monetdb"; years = 1900:data.table::year(Sys.time()); dbIndexPath = "~/Desktop/dbIndex.rda"
compileDatabase <- function(years = 1900:data.table::year(Sys.time()), dbPath = "~/Desktop/IMR_db.monetdb", dbIndexPath = "~/Desktop/dbIndex.rda") {
  
  ## Cruise series
  
  message("1. Compiling cruise series list")
  cruiseSeriesList <- prepareCruiseSeriesList()
  
  ## Gear list
  
  message("2. Compiling gear list")
  gearList <- prepareGearList()
  
  ## ICES Areas

  message("3. Compiling ICES area shapes")
  icesAreas <- prepareICESareas()

  ## Download
  
  message("4. Compiling database")
  downloadDatabase(years = years, dbPath = dbPath, icesAreaShape = icesAreas, cruiseSeries = cruiseSeriesList, gearCodes = gearList)
  
  # Index
  
  message("4. Indexing database")
  indexDatabase(dbPath = dbPath, dbIndexPath = dbIndexPath)
  
}
