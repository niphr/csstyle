#' @noRd
cs_pal <- function(palette = "primary", direction = 1) {
  if (!palette %in% colors$palette_names) stop("Palette '{palette}' not in: ", paste0(colors$palette_names, collapse = ", "))

  function(n) {
    pal_names <- stringr::str_subset(names(colors$palettes), glue::glue("^{palette}_[0-9]+$"))
    nums_available <- stringr::str_remove(pal_names, paste0(palette, "_"))
    if (!n %in% nums_available) stop(glue::glue("Only {paste0(nums_available, collapse=', ')} levels allowed for {palette}"))

    pal <- colors$palettes[[glue::glue("{palette}_{n}")]]
    if (direction == -1) {
      pal <- rev(pal)
    }

    retval <- pal[1:n]
    names(retval) <- NULL

    return(retval)
  }
}

#' ggplot2 color scale using Core Surveillance color palettes
#'
#' @description Creates a discrete color scale for ggplot2 using predefined Core Surveillance color palettes.
#' @param palette Name of color palette to use (default: "primary"). Options: "primary", "warning", "posneg"
#' @param direction Direction of color palette: 1 for normal, -1 for reversed (default: 1)
#' @param ... Additional arguments passed to ggplot2::discrete_scale()
#' @returns A ggplot2 discrete color scale
#' @examples
#' library(ggplot2)
#'
#' # Default primary color scale
#' ggplot(mtcars, aes(x = mpg, y = hp, color = factor(cyl))) +
#'   geom_point() +
#'   scale_color_cs()
#'
#' # Use warning palette
#' ggplot(mtcars, aes(x = mpg, y = hp, color = factor(cyl))) +
#'   geom_point() +
#'   scale_color_cs(palette = "warning")
#' @family csstyle_ggplot2
#' @export
scale_color_cs <- function(..., palette = "primary", direction = 1) {
  pal <- cs_pal(palette = palette, direction = direction)

  ggplot2::discrete_scale("colour", palette = pal, ...)
}

#' ggplot2 fill scale using Core Surveillance color palettes
#'
#' @description Creates a discrete fill scale for ggplot2 using predefined Core Surveillance color palettes.
#' @param palette Name of color palette to use (default: "primary"). Options: "primary", "warning", "posneg"
#' @param direction Direction of color palette: 1 for normal, -1 for reversed (default: 1)
#' @param ... Additional arguments passed to ggplot2::discrete_scale()
#' @returns A ggplot2 discrete fill scale
#' @examples
#' library(ggplot2)
#'
#' # Default primary fill scale
#' ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
#'   geom_bar() +
#'   scale_fill_cs()
#'
#' # Use posneg palette
#' ggplot(mtcars, aes(x = factor(vs), fill = factor(vs))) +
#'   geom_bar() +
#'   scale_fill_cs(palette = "posneg")
#' @family csstyle_ggplot2
#' @export
scale_fill_cs <- function(..., palette = "primary", direction = 1) {
  pal <- cs_pal(palette = palette, direction = direction)

  ggplot2::discrete_scale("fill", palette = pal, ...)
}

#' Display all available color palettes
#'
#' @description Creates a visualization showing all available Core Surveillance color palettes with their color codes and names.
#' @returns A ggplot2 plot displaying all color palettes
#' @examples
#' # Display all available color palettes
#' display_all_palettes()
#' @family csstyle_utilities
#' @import data.table ggplot2
#' @export
display_all_palettes <- function() {
  V2 <- NULL
  V3 <- NULL
  pal <- NULL
  x <- NULL

  tags <- rev(colors$palette_names)
  to_plot <- vector("list", length = length(tags))

  for (i in seq_along(tags)) {
    p <- stringr::str_subset(rev(names(colors$palettes)), glue::glue("^{tags[i]}_[0-9]+$"))[1]
    to_plot[[i]] <- data.table(pal = stringr::str_remove(p, "_[0-9]+$"), colors$palettes[[p]], names(colors$palettes[[p]]))
    to_plot[[i]][, x := 1:.N]
  }
  to_plot <- rbindlist(to_plot)

  cols <- unique(to_plot$V2)
  cols <- unique(cols)
  names(cols) <- cols

  to_plot[, pal := factor(pal, levels = tags)]

  q <- ggplot(to_plot, aes(x = x, y = pal, fill = V2, label = V3))
  q <- q + geom_tile(color = "black", height = 0.5, size = 1)
  q <- q + geom_text()
  q <- q + scale_fill_manual(values = cols)
  q <- q + scale_x_continuous("Level")
  q <- q + scale_y_discrete("Palette")
  q <- q + theme_cs(panel_on_top = FALSE, legend_position = "none")
  q
}
