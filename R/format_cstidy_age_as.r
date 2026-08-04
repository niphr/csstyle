#' Format cstidy age codes as factor with Norwegian text
#'
#' @description Converts age codes (e.g., "009", "005_014") to readable Norwegian age labels with proper formatting.
#' @param x Character vector containing age codes or age group codes
#' @examples
#' csstyle::format_cstidy_age_as_factor("009")
#' csstyle::format_cstidy_age_as_factor("005-014")
#' @returns Factor vector with Norwegian age labels (e.g., "9 år", "5-14 år")
#' @seealso \code{\link{format_location_code_as_factor}} for the same
#'   factor/character pair applied to Norwegian location codes. These two age
#'   functions are not demonstrated in \code{vignette("csstyle")}.
#' @family csstyle_age_formatters
#' @rdname format_cstidy_age_as
#' @export
format_cstidy_age_as_factor <- function(x) {
  age_levels <- unique(x)
  age_levels <- sort(age_levels)

  # remove all 0s at the start
  age_labels <- stringr::str_remove_all(age_levels, "^[0]+")

  # if there was just 000 at the start, it is now empty, so we need to put a zero back in
  age_labels <- stringr::str_replace_all(age_labels, "^_", "0_")

  # remove all 0s after hyphens
  age_labels <- stringr::str_replace_all(age_labels, "\\_[0]+", "_")

  # if there was just 000 after the hyphen, it is now empty, so we need to put a zero back in
  age_labels <- stringr::str_replace_all(age_labels, "\\_$", "_")
  age_labels <- stringr::str_replace_all(age_labels, "_", "-")
  age_labels <- paste0(age_labels, " ", csdata::nb$aa, "r")

  return(factor(x, levels = age_levels, labels = age_labels))
}

#' Format cstidy age codes as character with Norwegian text
#'
#' @description Converts age codes to readable Norwegian age labels and returns as character vector.
#' @param x Character vector containing age codes or age group codes
#' @examples
#' csstyle::format_cstidy_age_as_character("009")
#' csstyle::format_cstidy_age_as_character("005-014")
#' @returns Character vector with Norwegian age labels (e.g., "9 år", "5-14 år")
#' @family csstyle_age_formatters
#' @rdname format_cstidy_age_as
#' @export
format_cstidy_age_as_character <- function(x) {
  return(as.character(format_cstidy_age_as_factor(x)))
}
