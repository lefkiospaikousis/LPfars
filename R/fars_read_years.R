#' Read multiple csv files
#' 
#' This is a function that reads multiple csv files in the standard format of \code{accident_YEAR.csv.bz2} into R.  
#' The function reads a vector or list of year values and calls \code{make_filename} to create the csv file names 
#' and then calls \code{fars_read} to read in the csv files
#' 
#' An error message is provided if no csv files are present in the current working directory under the 
#' year values that are provided, 
#'  
#' @param years A vector or list of year values
#' @return A list of tibbles - one for each year
#' @examples
#' \dontrun{
#' fars_read_years(c("2014", "2015"))
#' fars_read_years(list("2014", "2015"))
#' }
#' @importFrom dplyr mutate select
#' @importFrom magrittr %>%
#' @export
fars_read_years <- function(years) {
  lapply(years, function(year) {
    file <- make_filename(year)
    tryCatch({
      dat <- fars_read(file)
      dplyr::mutate(dat, year = year) %>% 
        dplyr::select(MONTH, year)
    }, error = function(e) {
      warning("invalid year: ", year)
      return(NULL)
    })
  })
}