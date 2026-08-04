#' Convert Norwegian location codes to factor with readable labels
#'
#' @description Converts Norwegian location codes (municipality/county codes) to factors with human-readable Norwegian location names.
#' @param x Character vector of Norwegian location codes
#' @param label Column name from reference data to use for labels (default: uses global setting)
#' @param label_if_not_unique Column name to use when location names are not unique (default: uses global setting)
#' @param reference Data.table with location reference data (default: csdata::nor_locations_names())
#' @param direction Integer: 1 for normal order, -1 for reversed order (default: 1)
#' @returns Factor vector with Norwegian location names as labels
#' @examples
#' \donttest{
#' # Convert location codes to factors (requires csdata package)
#' location_codes <- c("03", "11", "15")
#' format_location_code_as_factor(location_codes)
#' format_location_code_as_character(location_codes)
#' }
#' @seealso \code{\link{set_global}} to change the default \code{label} and
#'   \code{label_if_not_unique} columns, and
#'   \code{\link{format_cstidy_age_as_factor}} for the same factor/character
#'   pair applied to cstidy age codes. These two location functions are not
#'   demonstrated in \code{vignette("csstyle")}.
#' @family csstyle_location_formatters
#' @rdname format_location_code_as
#' @export
format_location_code_as_factor <- function(
  x,
  label = NULL, # location_name
  label_if_not_unique = NULL, # location_name_description_nb
  reference = csdata::nor_locations_names(),
  direction = 1
) {
  if (is.null(label)) {
    label <- global$location_code_to_factor_label
  }
  if (is.null(label_if_not_unique)) {
    label_if_not_unique <- global$location_code_to_factor_label_if_not_unique
  }

  new_labels_x <- reference[[label]][reference$location_code %in% x]
  location_order_x <- reference$location_order[reference$location_code %in% x]
  levels_x <- reference$location_code[reference$location_code %in% x]
  if (length(new_labels_x[duplicated(new_labels_x)]) != 0) {
    if (is.null(label_if_not_unique)) {
      stop("Your labels are not unique, also use label_if_not_unique")
    }
    duplicate_x <- new_labels_x[duplicated(new_labels_x)]
    for (i in 1:length(new_labels_x)) {
      if (new_labels_x[i] %in% duplicate_x) {
        new_labels_x[i] <- reference[[label_if_not_unique]][location_order_x[i]]
      }
    }
    # print(new_labels_x)
  }

  if (direction == -1) {
    levels_x <- rev(levels_x)
    new_labels_x <- rev(new_labels_x)
  }

  retval <- factor(
    x, # data
    levels = levels_x, # unique levels indata in the right order
    labels = new_labels_x # pretty names
  )
  return(retval)
}

#' Convert Norwegian location codes to character with readable labels
#'
#' @description Converts Norwegian location codes to character vector with human-readable Norwegian location names.
#' @param x Character vector of Norwegian location codes
#' @param label Column name from reference data to use for labels (default: uses global setting)
#' @param label_if_not_unique Column name to use when location names are not unique (default: uses global setting)
#' @param reference Data.table with location reference data (default: csdata::nor_locations_names())
#' @param direction Integer: 1 for normal order, -1 for reversed order (default: 1)
#' @returns Character vector with Norwegian location names
#' @family csstyle_location_formatters
#' @rdname format_location_code_as
#' @export
format_location_code_as_character <- function(
  x,
  label = NULL, # location_name
  label_if_not_unique = NULL, # location_name_description_nb
  reference = csdata::nor_locations_names(),
  direction = 1
) {
  if (is.null(label)) {
    label <- global$location_code_to_factor_label
  }
  if (is.null(label_if_not_unique)) {
    label_if_not_unique <- global$location_code_to_factor_label_if_not_unique
  }

  retval <- format_location_code_as_factor(
    x = x,
    label = label,
    label_if_not_unique = label_if_not_unique,
    reference = reference,
    direction = direction
  )
  retval <- as.character(retval)
  return(retval)
}
