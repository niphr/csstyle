#' View HTML in the RStudio viewer
#' @description Opens HTML content in the RStudio viewer pane.
#' @param x Character string containing HTML content to display
#' @returns Nothing (called for side effects).
#' @examples
#' # View simple HTML content
#' html_content <- "<h1>Hello World</h1><p>This is a test.</p>"
#' \dontrun{
#' view_html(html_content)
#' }
#' @seealso \code{vignette("csstyle")} for an overview of the package.
#'   \code{view_html()} itself is not demonstrated there.
#' @export
view_html <- function(x) {
  tempDir <- tempfile()
  dir.create(tempDir)
  htmlFile <- file.path(tempDir, "index.html")
  # (code to write some content to the file)
  htmlPage <- paste(
    "<html>",
    "<head>",
    "<meta http-equiv=\"Content-type\" content=\"text/html;charset=UTF-8\">",
    "</head>",
    "<body>",
    "<div style=\"margin: 0 auto; display: table; margin-top: 1em;\">",
    x,
    "</div>",
    "</body>",
    "</html>",
    sep = "\n"
  )
  cat(htmlPage, file = htmlFile)
  #viewer <- getOption("viewer")
  rstudioapi::viewer(htmlFile)
}
