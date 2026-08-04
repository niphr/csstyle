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
to build such an object from a real GitHub URL. Neither function is
demonstrated in
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md).

## Examples

``` r
# as_github_code() needs an internet connection, so this example builds an
# equivalent github_code object directly.
x <- c("a <- 1", "b <- 2", "a + b")
attr(x, "pretty_url") <- "https://github.com/niphr/csstyle/blob/main/demo.R"
attr(x, "class") <- c("github_code", class(x))

# All lines, no link
print(x)
#> 1 | a <- 1
#> 2 | b <- 2
#> 3 | a + b

# A subset of lines, with the anchored GitHub link above them
print(x, lines = 2:3, include_url = TRUE)
#> https://github.com/niphr/csstyle/blob/main/demo.R#L2-L3
#> 
#> 2 | b <- 2
#> 3 | a + b
```
