#' Create a github_code object from a GitHub URL
#'
#' @title Create a github_code object from a GitHub URL
#' @description Reads the lines of a file on GitHub and returns them as a
#'   \code{github_code} object. A "blob" URL is rewritten to the corresponding
#'   raw URL before the file is read. The object can be printed with line
#'   numbers and an optional link back to GitHub (see
#'   \code{\link{print.github_code}}).
#' @param url Character string. A GitHub URL to a file, either a "blob" URL
#'   (e.g. \code{https://github.com/owner/repo/blob/main/file.R}) or the
#'   corresponding raw URL.
#' @returns An object of class \code{github_code}: a character vector of the
#'   file's lines with a \code{pretty_url} attribute.
#' @examples
#' \dontrun{
#' # Kept in \dontrun{}: readLines() fetches the URL, so this example needs an
#' # internet connection.
#' x <- as_github_code("https://github.com/niphr/csstyle/blob/main/README.md")
#' print(x, lines = 1:3)
#' }
#' @seealso \code{\link{print.github_code}}, whose examples run without a
#'   network connection. Neither function is demonstrated in
#'   \code{vignette("csstyle")}.
#' @export
as_github_code <- function(url) {
  if (
    stringr::str_detect(url, "^https://github.com/") |
      stringr::str_detect(url, "^https://www.github.com/")
  ) {
    url <- stringr::str_replace(
      url,
      "^https://www.github.com/",
      "https://raw.githubusercontent.com/"
    )
    url <- stringr::str_replace(
      url,
      "^https://github.com/",
      "https://raw.githubusercontent.com/"
    )
    url <- stringr::str_replace(url, "/blob/", "/")
  }
  pretty_url <- stringr::str_replace(
    url,
    "^https://raw.githubusercontent.com/",
    "https://github.com/"
  )
  pretty_url <- stringr::str_split(pretty_url, "/")[[1]]
  pretty_url <- c(pretty_url[1:5], "blob", pretty_url[6:length(pretty_url)])
  pretty_url <- paste0(pretty_url, collapse = "/")

  x <- readLines(url)
  attr(x, "pretty_url") <- pretty_url
  attr(x, "class") <- c("github_code", class(x))
  x
}

#' Print a github_code object
#'
#' @title Print a github_code object
#' @description Prints the lines of a \code{github_code} object with line
#'   numbers. Use the \code{lines} argument to print a subset of lines, and
#'   \code{include_url} or \code{include_url_as_link} to also print a link back
#'   to the file on GitHub.
#' @param x A \code{github_code} object, as created by
#'   \code{\link{as_github_code}}.
#' @param ... Further arguments controlling the output: \code{lines} (integer
#'   vector of line numbers to print), \code{include_url} (logical; print the
#'   GitHub link), and \code{include_url_as_link} (logical; print the link as
#'   HTML).
#' @returns The input \code{x}, invisibly.
#' @examples
#' # as_github_code() needs an internet connection, so this example builds an
#' # equivalent github_code object directly.
#' x <- c("a <- 1", "b <- 2", "a + b")
#' attr(x, "pretty_url") <- "https://github.com/niphr/csstyle/blob/main/demo.R"
#' attr(x, "class") <- c("github_code", class(x))
#'
#' # All lines, no link
#' print(x)
#'
#' # A subset of lines, with the anchored GitHub link above them
#' print(x, lines = 2:3, include_url = TRUE)
#' @seealso \code{\link{as_github_code}} to build such an object from a real
#'   GitHub URL. Neither function is demonstrated in \code{vignette("csstyle")}.
#' @export
print.github_code <- function(x, ...) {
  dots <- list(...)
  if ("lines" %in% names(dots)) {
    lines <- dots[["lines"]]
  } else {
    lines <- seq_len(length(x))
  }

  min_lines <- min(lines)
  max_lines <- max(lines)

  if (min_lines == 1 & max_lines == length(x)) {
    link <- attr(x, "pretty_url")
  } else {
    link <- paste0(attr(x, "pretty_url"), "#L", min_lines, "-L", max_lines)
  }

  if ("include_url" %in% names(dots)) {
    if (dots[["include_url"]] == TRUE) {
      cat(glue::glue("{link}\n\n\n"))
    }
  }

  if ("include_url_as_link" %in% names(dots)) {
    if (dots[["include_url_as_link"]] == TRUE) {
      cat(glue::glue("<a href='{link}'>{link}</a>\n\n\n"))
    }
  }

  max_width <- log(max_lines, base = 10) %>%
    floor() +
    1
  for (i in lines) {
    cat(formatC(i, width = max_width), " | ", x[i], "\n", sep = "")
  }
  invisible(x)
}
