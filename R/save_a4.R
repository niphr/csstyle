#' Save a ggplot2 plot at A4 size
#' @description Saves a ggplot2 plot with A4 paper dimensions.
#' @param q ggplot2 plot object to save.
#' @param filename Character string. The output filename, including the
#'   extension.
#' @param landscape Logical. Set to \code{TRUE} for landscape orientation.
#'   Default \code{TRUE}.
#' @param scaling_factor Numeric. Scales the A4 dimensions. Default 1.
#' @details \code{save_a4()} renders PNG output with the \code{ragg} AGG device,
#'   \code{ragg::agg_png}. That device is markedly faster than the default
#'   \code{grDevices} PNG device for busy, many-geom ggplot2 plots, and it gives
#'   cleaner text. For a filename that is not a PNG, \code{ggsave()} selects the
#'   device from the extension.
#' @returns Nothing (called for side effects).
#' @examples
#' library(ggplot2)
#'
#' # Create a plot
#' p <- ggplot(mtcars, aes(x = mpg, y = hp)) +
#'   geom_point() +
#'   theme_cs()
#'
#' \dontrun{
#' # Save in landscape A4
#' save_a4(p, "myplot.png")
#'
#' # Save in portrait A4 with larger scaling
#' save_a4(p, "myplot_large.png", landscape = FALSE, scaling_factor = 1.5)
#' }
#' @seealso \code{\link{theme_cs}} is the Core Surveillance plot theme.
#'   \code{vignette("csstyle")} does not demonstrate \code{save_a4()}.
#' @export
save_a4 <- function(q, filename, landscape = T, scaling_factor = 1) {
  # Use the ragg AGG device for PNGs (much faster than grDevices::png on
  # complex ggplots); let ggsave infer the device for any other extension.
  device <- if (grepl("\\.png$", filename, ignore.case = TRUE)) {
    ragg::agg_png
  } else {
    NULL
  }
  if (landscape) {
    ggsave(
      filename,
      plot = q,
      width = 297 * scaling_factor,
      height = 210 * scaling_factor,
      units = "mm",
      device = device
    )
  } else {
    ggsave(
      filename,
      plot = q,
      width = 210 * scaling_factor,
      height = 297 * scaling_factor,
      units = "mm",
      device = device
    )
  }
}
