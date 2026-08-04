#' Pretty breaks
#' @description Creates a function for generating pretty axis breaks with Norwegian number formatting.
#' @param n Number of desired breaks (default: 5)
#' @param formatting_fn Formatting function to apply to break labels (default: Norwegian number formatting)
#' @param ... Additional arguments passed to pretty()
#' @returns A function that can be used for breaks on graphing.
#' @examples
#' library(ggplot2)
#'
#' # Use pretty breaks with default formatting
#' ggplot(mtcars, aes(x = mpg, y = hp)) +
#'   geom_point() +
#'   scale_x_continuous(breaks = pretty_breaks(n = 4))
#' @seealso \code{\link{format_num_as_nor_num_0}}, the default
#'   \code{formatting_fn}, and \code{\link{every_nth}}, which thins labels on a
#'   discrete axis instead. The "Pretty breaks" section of
#'   \code{vignette("csstyle")} demonstrates this function.
#' @export
pretty_breaks <- function(
  n = 5,
  formatting_fn = csstyle::format_num_as_nor_num_0,
  ...
) {
  force_all(n, formatting_fn, ...)
  n_default <- n
  function(x, n = n_default) {
    breaks <- pretty(x, n, ...)
    names(breaks) <- formatting_fn(breaks)
    breaks
  }
}
