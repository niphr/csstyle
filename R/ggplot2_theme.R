#' Core Surveillance ggplot2 theme for consistent styling
#'
#' @description A ggplot2 theme that follows the Core Surveillance visual
#'   guidelines. You can configure the grid lines and the formatting.
#' @param base_size Base font size in points. Default 16.
#' @param base_family Base font family. Default \code{""}.
#' @param base_line_size Base line size, relative to \code{base_size}. Default
#'   \code{base_size / 22}.
#' @param base_rect_size Base rectangle size, relative to \code{base_size}.
#'   Default \code{base_size / 22}.
#' @param legend_position Position of the legend. One of "right", "left", "top",
#'   "bottom" or "none". Default "right".
#' @param x_axis_vertical Logical. Set to \code{TRUE} to turn the x-axis labels
#'   vertical. Default \code{FALSE}.
#' @param panel_on_top Logical. Set to \code{TRUE} to draw the panel on top of
#'   the data. Default \code{TRUE}.
#' @param panel.grid.major.x Logical, or a ggplot2 element. Major vertical grid
#'   lines. Default \code{FALSE}.
#' @param panel.grid.minor.x Logical, or a ggplot2 element. Minor vertical grid
#'   lines. Default \code{FALSE}.
#' @param panel.grid.major.y Logical, or a ggplot2 element. Major horizontal
#'   grid lines. Default \code{TRUE}.
#' @param panel.grid.minor.y Logical, or a ggplot2 element. Minor horizontal
#'   grid lines. Default \code{TRUE}.
#' @returns A complete ggplot2 theme object.
#' @examples
#' library(ggplot2)
#'
#' # Basic usage with default settings
#' ggplot(mtcars, aes(x = mpg, y = hp)) +
#'   geom_point() +
#'   theme_cs()
#'
#' # With custom settings
#' ggplot(mtcars, aes(x = mpg, y = hp)) +
#'   geom_point() +
#'   theme_cs(legend_position = "bottom", x_axis_vertical = TRUE)
#' @family csstyle_ggplot2
#' @rdname theme
#' @export
theme_cs <- function(
  base_size = 16,
  base_family = "",
  base_line_size = base_size / 22,
  base_rect_size = base_size / 22,
  legend_position = "right",
  x_axis_vertical = FALSE,
  panel_on_top = TRUE,
  panel.grid.major.x = FALSE,
  panel.grid.minor.x = FALSE,
  panel.grid.major.y = TRUE,
  panel.grid.minor.y = TRUE
) {
  half_line <- base_size / 2

  if (identical(panel.grid.major.x, TRUE)) {
    panel.grid.major.x <- element_line(colour = "black", linewidth = rel(0.1))
  } else if (identical(panel.grid.major.x, FALSE)) {
    panel.grid.major.x <- element_blank()
  }

  if (identical(panel.grid.minor.x, TRUE)) {
    panel.grid.minor.x <- element_line(colour = "black", linewidth = rel(0.05))
  } else if (identical(panel.grid.minor.x, FALSE)) {
    panel.grid.minor.x <- element_blank()
  }

  if (identical(panel.grid.major.y, TRUE)) {
    panel.grid.major.y <- element_line(colour = "black", linewidth = rel(0.1))
  } else if (identical(panel.grid.major.y, FALSE)) {
    panel.grid.major.y <- element_blank()
  }

  if (identical(panel.grid.minor.y, TRUE)) {
    panel.grid.minor.y <- element_line(colour = "black", linewidth = rel(0.05))
  } else if (identical(panel.grid.minor.y, FALSE)) {
    panel.grid.minor.y <- element_blank()
  }

  retval <- theme_bw(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  ) %+replace%
    theme(
      axis.text = element_text(colour = "black", size = rel(0.8)),
      axis.ticks = element_line(colour = "black", linewidth = rel(0.5)),
      axis.ticks.length = unit(rel(.25), "cm"),
      axis.title.x = element_text(margin = margin(t = base_size), vjust = 1),
      axis.title.y = element_text(
        angle = 90,
        margin = margin(r = base_size),
        vjust = 1
      ),
      axis.line = element_line(colour = "black", linewidth = rel(1)),
      panel.border = element_rect(
        fill = NA,
        colour = NA,
        linewidth = rel(1)
      ),
      strip.background = element_rect(colour = "white", fill = "white"),
      panel.background = element_rect(fill = NA, colour = NA),
      panel.grid.major.x = panel.grid.major.x,
      panel.grid.minor.x = panel.grid.minor.x,
      panel.grid.major.y = panel.grid.major.y,
      panel.grid.minor.y = panel.grid.minor.y,
      panel.grid = element_line(),
      legend.position = legend_position,
      plot.title.position = "plot",
      plot.caption.position = "plot",
      complete = TRUE
    )

  if (legend_position == "bottom") {
    retval <- retval %+replace%
      theme(
        legend.position = "bottom",
        legend.direction = "horizontal"
      )
  }

  if (x_axis_vertical) {
    retval <- retval %+replace%
      theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5))
  }

  if (panel_on_top) {
    retval <- retval %+replace%
      theme(
        panel.background = element_rect(fill = NA, colour = NA),
        panel.ontop = TRUE
      )
  }

  return(retval)
}

#' Set the x-axis text to be vertical
#'
#' @description Returns a ggplot2 theme component that turns the x-axis tick
#'   labels vertical. Add it to a plot as you add any other theme element.
#' @import ggplot2
#' @returns A ggplot2 theme component that you can add to a plot.
#' @examples
#' library(ggplot2)
#'
#' # Add vertical x-axis labels to any plot
#' ggplot(mtcars, aes(x = rownames(mtcars), y = mpg)) +
#'   geom_col() +
#'   set_x_axis_vertical()
#' @rdname theme
#' @export
set_x_axis_vertical <- function() {
  return(theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)))
}
