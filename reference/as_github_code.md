# An easy way to print github code

An easy way to print github code

## Usage

``` r
as_github_code(url)
```

## Arguments

- url:

  URL from github

## Value

Class github_code

## Examples

``` r
if (FALSE) { # \dontrun{
# Example usage (requires internet connection)
x <- as_github_code("https://github.com/niphr/csstyle/blob/main/README.md")
print(x, lines = 1:3)
} # }
```
