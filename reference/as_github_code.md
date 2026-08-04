# Create a github_code object from a GitHub URL

Reads the lines of a file on GitHub and returns them as a `github_code`
object. A "blob" URL is rewritten to the corresponding raw URL before
the file is read. The object can be printed with line numbers and an
optional link back to GitHub (see
[`print.github_code`](https://niphr.github.io/csstyle/reference/print.github_code.md)).

## Usage

``` r
as_github_code(url)
```

## Arguments

- url:

  Character string. A GitHub URL to a file, either a "blob" URL (e.g.
  `https://github.com/owner/repo/blob/main/file.R`) or the corresponding
  raw URL.

## Value

An object of class `github_code`: a character vector of the file's lines
with a `pretty_url` attribute.

## Details

Create a github_code object from a GitHub URL

## See also

[`print.github_code`](https://niphr.github.io/csstyle/reference/print.github_code.md),
whose examples run without a network connection. Neither function is
demonstrated in
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md).

## Examples

``` r
if (FALSE) { # \dontrun{
# Kept in \dontrun{}: readLines() fetches the URL, so this example needs an
# internet connection.
x <- as_github_code("https://github.com/niphr/csstyle/blob/main/README.md")
print(x, lines = 1:3)
} # }
```
