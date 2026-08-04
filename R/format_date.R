#' Format date and datetime using Norwegian conventions
#'
#' @description Functions for formatting dates and datetimes using Norwegian conventions or for safe filename use.
#' @param x Date or datetime object to format
#' @param format Character string specifying the desired format
#' @returns Character vector with formatted dates/datetimes
#' @examples
#' # Format current date/time using Norwegian conventions
#' format_date_as_nor()
#' format_datetime_as_nor()
#'
#' # Format specific dates
#' format_date_as_nor(as.Date("2023-12-25"))
#' format_datetime_as_file(as.POSIXct("2023-12-25 14:30:00"))
#' @seealso \code{\link{format_date_as_journal}} for the ISO 8601 equivalents.
#'   The "Norwegian date format" section of \code{vignette("csstyle")}
#'   demonstrates all three of these functions.
#' @family csstyle_date_formatters
#' @rdname format_date
#' @export
format_date_as_nor <- function(x = lubridate::today(), format = "%d.%m.%Y") {
  retval <- format.Date(x, format = format)
  return(retval)
}

#' @rdname format_date
#' @export
format_datetime_as_nor <- function(
  x = lubridate::now(),
  format = "%d.%m.%Y kl. %H:%S"
) {
  retval <- format.Date(x, format = format)
  return(retval)
}

#' @rdname format_date
#' @export
format_datetime_as_file <- function(
  x = lubridate::now(),
  format = "%Y_%m_%d_%H%M%S"
) {
  retval <- format.Date(x, format = format)
  return(retval)
}

# Journal date formatting functions ------------------------------------------

#' Format date and datetime using journal conventions (ISO 8601)
#'
#' @description Functions for formatting dates and datetimes using ISO 8601 journal conventions.
#' @param x Date or datetime object to format
#' @param format Character string specifying the desired format
#' @returns Character vector with journal-formatted dates/datetimes
#' @examples
#' # Format current date/time using journal conventions (ISO 8601)
#' format_date_as_journal()
#' format_datetime_as_journal()
#'
#' # Format specific dates
#' format_date_as_journal(as.Date("2023-12-25"))
#' format_datetime_as_journal_file(as.POSIXct("2023-12-25 14:30:00"))
#' @seealso \code{\link{format_date_as_nor}} for the Norwegian equivalents. The
#'   "Date format comparison" section of \code{vignette("csstyle")} demonstrates
#'   \code{format_date_as_journal()} and \code{format_datetime_as_journal()};
#'   \code{format_datetime_as_journal_file()} is not demonstrated there.
#' @family csstyle_journal_date_formatters
#' @rdname format_date_as_journal
#' @export
format_date_as_journal <- function(
  x = lubridate::today(),
  format = "%Y-%m-%d"
) {
  retval <- format.Date(x, format = format)
  return(retval)
}

#' @rdname format_date_as_journal
#' @export
format_datetime_as_journal <- function(
  x = lubridate::now(),
  format = "%Y-%m-%d %H:%M:%S"
) {
  retval <- format.Date(x, format = format)
  return(retval)
}

#' @rdname format_date_as_journal
#' @export
format_datetime_as_journal_file <- function(
  x = lubridate::now(),
  format = "%Y_%m_%d_%H%M%S"
) {
  retval <- format.Date(x, format = format)
  return(retval)
}
