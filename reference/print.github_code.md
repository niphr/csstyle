# Print a github_code object

Prints the lines of a `github_code` object with line numbers. Use the
`lines` argument to print a subset of the lines. Use `include_url` or
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

  Further arguments that control the output. `lines` is an integer
  vector of the line numbers to print. `include_url` is logical. Set it
  to `TRUE` to also print the GitHub link. `include_url_as_link` is
  logical. Set it to `TRUE` to print the GitHub link as HTML.

## Value

The input `x`, invisibly.

## See also

[`as_github_code`](https://niphr.github.io/csstyle/reference/as_github_code.md)
builds such an object from a real GitHub URL.
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
demonstrates neither function.

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
