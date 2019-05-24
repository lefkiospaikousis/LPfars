#' Make a filename 
#' 
#' This is a function that concatenates string values and creates a filename in a standard format of \code{accident_YEAR.csv.bz2}
#' 
#' The function reads a value for the year and creates a filename in a standard format of \code{accident_YEAR.csv.bz2}
#'  
#' @param year The year as numeric or string
#' @return A file name in string format
#' @examples
#' \dontrun{
#' make_filename("2014")
#' make_filename(2014)
#' }
#' @export
make_filename <- function(year) {
  year <- as.integer(year)
  sprintf("accident_%d.csv.bz2", year)
}