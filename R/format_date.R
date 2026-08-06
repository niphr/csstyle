#' Format date and datetime using Norwegian conventions
#'
#' @description Formats dates and datetimes with Norwegian conventions, or with
#'   a filename-safe format.
#' @param x Date or datetime object to format.
#' @param format Character string that sets the output format.
#' @returns Character vector of formatted dates and datetimes.
#' @examples
#' # Format current date/time using Norwegian conventions
#' format_date_as_nor()
#' format_datetime_as_nor()
#'
#' # Format specific dates
#' format_date_as_nor(as.Date("2023-12-25"))
#' format_datetime_as_file(as.POSIXct("2023-12-25 14:30:00"))
#' @seealso \code{\link{format_date_as_journal}} gives the ISO 8601 equivalents.
#'   The "Norwegian date format" section of \code{vignette("csstyle")}
#'   demonstrates all three functions on this page.
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
#' @description Formats dates and datetimes with the ISO 8601 conventions that
#'   journals use.
#' @param x Date or datetime object to format.
#' @param format Character string that sets the output format.
#' @returns Character vector of journal-formatted dates and datetimes.
#' @examples
#' # Format current date/time using journal conventions (ISO 8601)
#' format_date_as_journal()
#' format_datetime_as_journal()
#'
#' # Format specific dates
#' format_date_as_journal(as.Date("2023-12-25"))
#' format_datetime_as_journal_file(as.POSIXct("2023-12-25 14:30:00"))
#' @seealso \code{\link{format_date_as_nor}} gives the Norwegian equivalents.
#'   The "Date format comparison" section of \code{vignette("csstyle")}
#'   demonstrates \code{format_date_as_journal()} and
#'   \code{format_datetime_as_journal()}. That section does not demonstrate
#'   \code{format_datetime_as_journal_file()}.
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
