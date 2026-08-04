# Pretty breaks

Creates a function for generating pretty axis breaks with Norwegian
number formatting.

## Usage

``` r
pretty_breaks(n = 5, formatting_fn = csstyle::format_num_as_nor_num_0, ...)
```

## Arguments

- n:

  Number of desired breaks (default: 5)

- formatting_fn:

  Formatting function to apply to break labels (default: Norwegian
  number formatting)

- ...:

  Additional arguments passed to pretty()

## Value

A function that can be used for breaks on graphing.

## See also

[`format_num_as_nor_num_0`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md),
the default `formatting_fn`, and
[`every_nth`](https://niphr.github.io/csstyle/reference/every_nth.md),
which thins labels on a discrete axis instead. The "Pretty breaks"
section of
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
demonstrates this function.

## Examples

``` r
library(ggplot2)

# Use pretty breaks with default formatting
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  scale_x_continuous(breaks = pretty_breaks(n = 4))
```
