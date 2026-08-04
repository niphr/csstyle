#' Save ggplot in A4 scale
#' @description Saves a ggplot2 plot with A4 paper dimensions.
#' @param q ggplot2 plot object to save
#' @param filename Character string specifying the output filename (with extension)
#' @param landscape Logical indicating if plot should use landscape orientation (default: TRUE)
#' @param scaling_factor Numeric scaling factor for A4 dimensions (default: 1)
#' @details PNG output is rendered with the `ragg` AGG device
#'   (`ragg::agg_png`), which is markedly faster than the default `grDevices`
#'   PNG device for busy, many-geom ggplots (and gives cleaner text). Non-PNG
#'   filenames fall back to `ggsave`'s extension-based device selection.
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
#' @seealso \code{\link{theme_cs}} for the Core Surveillance plot theme.
#'   \code{save_a4()} is not demonstrated in \code{vignette("csstyle")}.
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
