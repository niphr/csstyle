#' Pretty breaks
#' @description Creates a function that generates pretty axis breaks with
#'   Norwegian number formatting.
#' @param n Number of desired breaks. Default 5.
#' @param formatting_fn Function applied to the break labels. Default
#'   \code{format_num_as_nor_num_0()}.
#' @param ... Further arguments passed to \code{pretty()}.
#' @returns A function that you can use for axis breaks.
#' @examples
#' library(ggplot2)
#'
#' # Use pretty breaks with default formatting
#' ggplot(mtcars, aes(x = mpg, y = hp)) +
#'   geom_point() +
#'   scale_x_continuous(breaks = pretty_breaks(n = 4))
#' @seealso \code{\link{format_num_as_nor_num_0}} is the default
#'   \code{formatting_fn}. \code{\link{every_nth}} thins labels on a discrete
#'   axis instead. The "Pretty breaks" section of \code{vignette("csstyle")}
#'   demonstrates \code{pretty_breaks()}.
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
