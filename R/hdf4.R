#' GeoTIFF
#'
#' Open GDAL GeoTIFF autotest file.
#'
#' See mdsumner/gdal/data-raw/  for details on getting this file.
#' @return string, either "GDALReadOnlyDataset" or "try-error"
#' @export
#' @importFrom rgdal GDAL.open GDAL.close
#' @examples
#' hdf4()
hdf4<- function() {
  fpath <- system.file("extdata", "hdifftst2.hdf", package = "hdf4.rhub")
  con <- try(rgdal::GDAL.open(fpath))
  retclass <- as.character(class(con))
  if (!inherits(con, "try-error")) rgdal::GDAL.close(con)
  return(retclass)
}
