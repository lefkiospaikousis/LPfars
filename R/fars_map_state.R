#' Plot the location of fatal injuries
#'
#' This is a function that creates a polygon map and plots the longitude and langitude coordinates of fatal injuries in a specified state and year in a map.
#' It reads a numeric value representing the state and a year value. It reads the csv file in the working directory
#' that holds the longitude and langitude of the incidents in the particular year. The funtion filters the incidents ny the given state
#'
#' In the case of wrong state numerical representation, or zero fatal injuries for that state in the particular year,
#' or there is no csv file in the current working directory under the specified year value, an error message is provided
#'
#' @param state.num A numerical represenatiion of the state
#' @param year The year value ot plot the fatal injuries
#' @return A polygon map and plotted points
#' @importFrom dplyr filter
#' @importFrom maps map
#' @examples
#' \dontrun{
#' fars_map_state(10, 2014)
#' fars_map_state(1, 2013)
#' }
#' @export
fars_map_state <- function(state.num, year) {

  STATE <- NULL

  filename <- make_filename(year)
  data <- fars_read(filename)
  state.num <- as.integer(state.num)

  if(!(state.num %in% unique(data$STATE)))
    stop("invalid STATE number: ", state.num)
  data.sub <- dplyr::filter(data, STATE == state.num)
  if(nrow(data.sub) == 0L) {
    message("no accidents to plot")
    return(invisible(NULL))
  }
  is.na(data.sub$LONGITUD) <- data.sub$LONGITUD > 900
  is.na(data.sub$LATITUDE) <- data.sub$LATITUDE > 90
  with(data.sub, {
    maps::map("state", ylim = range(LATITUDE, na.rm = TRUE),
              xlim = range(LONGITUD, na.rm = TRUE))
    graphics::points(LONGITUD, LATITUDE, pch = 46)
  })
}
