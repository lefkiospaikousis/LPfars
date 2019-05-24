#' Summarise the fatal injuries
#'
#' This is a function that row-binds a list of tibbles and summarises the fatal injuries by Year and Month
#'
#' An error message is provided if no csv files are present in the current working directory under the
#' year values that are provided,
#'
#' @param years A vector or list of year values
#' @return A table of frequencies by year (columns) and month (rows)
#' @importFrom magrittr "%>%"
#' @importFrom tidyr spread
#' @examples
#' \dontrun{
#' fars_summarize_years(c("2014", "2015"))
#' fars_summarize_years(list("2014", "2015"))
#' }
#' @export
fars_summarize_years <- function(years) {
  dat_list <- fars_read_years(years)
  dplyr::bind_rows(dat_list) %>%
    dplyr::group_by(year, MONTH) %>%
    dplyr::summarize(n = n()) %>%
    tidyr::spread(year, n)
}
