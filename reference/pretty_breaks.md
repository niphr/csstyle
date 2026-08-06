# Pretty breaks

Creates a function that generates pretty axis breaks with Norwegian
number formatting.

## Usage

``` r
pretty_breaks(n = 5, formatting_fn = csstyle::format_num_as_nor_num_0, ...)
```

## Arguments

- n:

  Number of desired breaks. Default 5.

- formatting_fn:

  Function applied to the break labels. Default
  [`format_num_as_nor_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md).

- ...:

  Further arguments passed to
  [`pretty()`](https://rdrr.io/r/base/pretty.html).

## Value

A function that you can use for axis breaks.

## See also

[`format_num_as_nor_num_0`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md)
is the default `formatting_fn`.
[`every_nth`](https://niphr.github.io/csstyle/reference/every_nth.md)
thins labels on a discrete axis instead. The "Pretty breaks" section of
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
demonstrates `pretty_breaks()`.

## Examples

``` r
library(ggplot2)

# Use pretty breaks with default formatting
ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  scale_x_continuous(breaks = pretty_breaks(n = 4))
```
