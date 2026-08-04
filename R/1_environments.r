global <- new.env()
global$location_code_to_factor_label <- "location_name"
global$location_code_to_factor_label_if_not_unique <- "location_name_description_nb"

#' Set global configuration for location code formatting
#'
#' @description Sets the global defaults that control how location codes are
#'   turned into labels by \code{\link{format_location_code_as_factor}} and
#'   \code{\link{format_location_code_as_character}}. These defaults are used
#'   whenever those functions are called without an explicit \code{label} or
#'   \code{label_if_not_unique}.
#' @param location_code_to_factor_label Column name in the reference data to use
#'   for location labels (default: "location_name").
#' @param location_code_to_factor_label_if_not_unique Column name in the
#'   reference data to use when the chosen labels are not unique
#'   (default: "location_name_description_nb").
#' @returns Called for its side effect of updating the global configuration.
#'   Returns the assigned value invisibly.
#' @examples
#' # Set global location formatting preferences
#' set_global(
#'   location_code_to_factor_label = "custom_name",
#'   location_code_to_factor_label_if_not_unique = "custom_description"
#' )
#'
#' # Reset to defaults
#' set_global()
#' @family csstyle_utilities
#' @export
set_global <- function(
  location_code_to_factor_label = "location_name",
  location_code_to_factor_label_if_not_unique = "location_name_description_nb"
) {
  global$location_code_to_factor_label <- location_code_to_factor_label
  global$location_code_to_factor_label_if_not_unique <- location_code_to_factor_label_if_not_unique
}

#' Color definitions for Core Surveillance styling
#'
#' @description A list holding the named colors, the base color, and the
#'   predefined color palettes used by the Core Surveillance styling functions.
#' @format A list with the following elements:
#' \describe{
#'   \item{named_colors}{Named character vector of 12 colors, "H1" to "H12".
#'     "H1" to "H7" are hex codes; "H8" to "H12" are R color names.}
#'   \item{base}{The base color (element "H1" of \code{named_colors}).}
#'   \item{palettes}{Named list of palettes: \code{primary_1} to
#'     \code{primary_12} (1 to 12 levels), \code{warning_3} (3 levels) and
#'     \code{posneg_2} (2 levels). The \code{posneg} family has no 1-level
#'     palette, so \code{scale_color_cs(palette = "posneg")} accepts 2 levels
#'     only.}
#'   \item{palette_names}{Character vector of the palette family names
#'     ("primary", "posneg", "warning").}
#' }
#' @returns A list. See the Format section for the elements.
#' @examples
#' # Access named colors
#' colors$named_colors["H1"]
#'
#' # View primary palette
#' colors$palettes$primary_3
#'
#' # See all available palettes
#' names(colors$palettes)
#' @family csstyle_utilities
#' @export
colors <- list()
colors$named_colors <- c(
  "H1" = "#393C61",
  "H2" = "#0975B5",
  "H3" = "#2EA1C0",
  "H4" = "#709900",
  "H5" = "#B11643",
  "H6" = "#FC5F56",
  "H7" = "#F7B500",
  "H8" = "blue",
  "H9" = "green",
  "H10" = "yellow",
  "H11" = "black",
  "H12" = "purple"
)

colors$base <- colors$named_colors["H1"]

colors$palettes <- list()

# primary
colors$palettes$primary_1 <- c(
  colors$named_colors["H1"]
)
colors$palettes$primary_2 <- c(
  colors$palettes$primary_1,
  colors$named_colors["H4"]
)
colors$palettes$primary_3 <- c(
  colors$palettes$primary_2,
  colors$named_colors["H2"]
)
colors$palettes$primary_4 <- c(
  colors$palettes$primary_3,
  colors$named_colors["H6"]
)
colors$palettes$primary_5 <- c(
  colors$palettes$primary_4,
  colors$named_colors["H3"]
)
colors$palettes$primary_6 <- c(
  colors$palettes$primary_5,
  colors$named_colors["H5"]
)
colors$palettes$primary_7 <- c(
  colors$palettes$primary_6,
  colors$named_colors["H7"]
)
colors$palettes$primary_8 <- c(
  colors$palettes$primary_7,
  colors$named_colors["H8"]
)
colors$palettes$primary_9 <- c(
  colors$palettes$primary_8,
  colors$named_colors["H9"]
)
colors$palettes$primary_10 <- c(
  colors$palettes$primary_9,
  colors$named_colors["H10"]
)
colors$palettes$primary_11 <- c(
  colors$palettes$primary_10,
  colors$named_colors["H11"]
)
colors$palettes$primary_12 <- c(
  colors$palettes$primary_11,
  colors$named_colors["H12"]
)

# warning - low medium high
colors$palettes$warning_3 <- c(
  colors$named_colors["H3"],
  colors$named_colors["H7"],
  colors$named_colors["H6"]
)

# posneg - yes-no
colors$palettes$posneg_1 <- c(
  colors$palettes$primary["H6"]
)

colors$palettes$posneg_2 <- c(
  colors$named_colors["H3"],
  colors$named_colors["H6"]
)

colors$palette_names <- c(
  "primary",
  "posneg",
  "warning"
)
