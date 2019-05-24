#' Read a csv file into R
#' 
#' This is a a function that reads a csv file into R
#' 
#' The function tests wether the file name exists in the current working directory and returns an error message if not.    
#'     It also imports the \code{read_csv} function from package \code{readr}
#' 
#' @param filename The filename to read in
#' @return Thsi function returns a tibble
#' @examples
#' \dontrun{
#' fars_read("data/accident_2013.csv")
#' }
#' @importFrom readr read_csv
#' @export
fars_read <- function(filename) {
  if(!file.exists(filename))
    stop("file '", filename, "' does not exist")
  data <- suppressMessages({
    readr::read_csv(filename, progress = FALSE)
  })
  dplyr::tbl_df(data)
}
