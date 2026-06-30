# Print a github_code object

Prints the lines of a `github_code` object with line numbers. Use the
`lines` argument to print a subset of lines, and `include_url` or
`include_url_as_link` to also print a link back to the file on GitHub.

## Usage

``` r
# S3 method for class 'github_code'
print(x, ...)
```

## Arguments

- x:

  A `github_code` object, as created by
  [`as_github_code`](https://niphr.github.io/csstyle/reference/as_github_code.md).

- ...:

  Further arguments controlling the output: `lines` (integer vector of
  line numbers to print), `include_url` (logical; print the GitHub
  link), and `include_url_as_link` (logical; print the link as HTML).

## Value

The input `x`, invisibly.

## Details

Print a github_code object

## See also

[`as_github_code`](https://niphr.github.io/csstyle/reference/as_github_code.md)

## Examples

``` r
if (FALSE) { # \dontrun{
# Requires an internet connection
x <- as_github_code("https://github.com/niphr/csstyle/blob/main/README.md")
print(x, lines = 1:3, include_url = TRUE)
} # }
```
