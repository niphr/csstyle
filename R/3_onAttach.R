#' @import data.table ggplot2
#' @noRd
.onAttach <- function(libname, pkgname) {
  version <- tryCatch(
    utils::packageDescription("csstyle", fields = "Version"),
    warning = function(w){
      1
    }
  )

  packageStartupMessage(paste0(
    "csstyle ",
    version,
    "\n",
    "https://niphr.github.io/csstyle/"
  ))
}
