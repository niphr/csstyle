# Create a github_code object from a GitHub URL

Reads the lines of a file on GitHub and returns them as a `github_code`
object. The function rewrites a "blob" URL to the matching raw URL
before it reads the file.
[`print.github_code`](https://niphr.github.io/csstyle/reference/print.github_code.md)
prints the object with line numbers and an optional link back to GitHub.

## Usage

``` r
as_github_code(url)
```

## Arguments

- url:

  Character string. A GitHub URL to a file. Use either a "blob" URL, for
  example `https://github.com/owner/repo/blob/main/file.R`, or the
  matching raw URL.

## Value

An object of class `github_code`: a character vector of the file's lines
with a `pretty_url` attribute.

## See also

[`print.github_code`](https://niphr.github.io/csstyle/reference/print.github_code.md),
whose examples run without a network connection.
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
demonstrates neither function.

## Examples

``` r
if (FALSE) { # \dontrun{
# Kept in \dontrun{}: readLines() fetches the URL, so this example needs an
# internet connection.
x <- as_github_code("https://github.com/niphr/csstyle/blob/main/README.md")
print(x, lines = 1:3)
} # }
```
