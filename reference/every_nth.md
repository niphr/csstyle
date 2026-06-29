# Returns every nth discrete value

Creates a function that returns every nth element from a vector, useful
for axis breaks in ggplot2.

## Usage

``` r
every_nth(n)
```

## Arguments

- n:

  Integer specifying which nth value to return (e.g., n=2 returns every
  2nd value)

## Value

A function that returns every nth discrete value.

## See also

Other csstyle_utilities:
[`colors`](https://niphr.github.io/csstyle/reference/colors.md),
[`display_all_palettes()`](https://niphr.github.io/csstyle/reference/display_all_palettes.md),
[`set_global()`](https://niphr.github.io/csstyle/reference/set_global.md)

## Examples

``` r
every_nth(4)(c(1:10))
#> [1]  2  6 10
if (FALSE) { # \dontrun{
scale_x_discrete(NULL, breaks = every_nth(n = 2))
} # }
```
