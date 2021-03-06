#' @title Cruise series list
#' @description Use the \code{\link{prepareCruiseSeriesList}} function to update the list.
#' @docType data
#' @keywords datasets
#' @name cruiseSeriesList
#' @format A data table 
#' @source Institute of Marine Research (\url{https://imr.no})
"cruiseSeriesList"

#' @title Gear code list
#' @description Use the \code{\link{prepareGearList}} function to update the list.
#' @docType data
#' @keywords datasets
#' @name gearList
#' @format A data table 
#' @source Institute of Marine Research (\url{https://imr.no})
"gearList"

#' @title ICES fishing areas
#' @description Food and Agriculture Organization Major Fishing Area 27 (i.e. ICES region) fishing area polygons. The polygons are not cut with land as opposed to the areas distributed on the ICES website (see \code{BioticEXplorerServer:::prepareICESareas}). This makes the polygons smaller and consequent calculations quicker. 
#' @docType data
#' @keywords datasets shapefiles
#' @family shapefiles
#' @name ICESareas
#' @format \code{\link[sp]{SpatialPolygonsDataFrame}} in decimal degrees (+init=epsg:4326).
#' @source \href{https://gis.ices.dk/sf/index.html}{International Council for the Exploration of the Sea}
#' @importFrom sp SpatialPolygonsDataFrame
"ICESareas"

