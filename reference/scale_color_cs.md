# ggplot2 color scale using Core Surveillance color palettes

Creates a discrete ggplot2 color scale from a predefined Core
Surveillance color palette.

## Usage

``` r
scale_color_cs(..., palette = "primary", direction = 1)
```

## Arguments

- ...:

  Further arguments passed to
  [`ggplot2::discrete_scale()`](https://ggplot2.tidyverse.org/reference/discrete_scale.html).

- palette:

  Name of the palette family. One of "primary", "warning" or "posneg".
  Default "primary".

- direction:

  Direction of the palette. Use 1 for the normal order and -1 for the
  reversed order. Default 1.

## Value

A ggplot2 discrete color scale.

## See also

Other csstyle_ggplot2:
[`scale_fill_cs()`](https://niphr.github.io/csstyle/reference/scale_fill_cs.md),
[`theme_cs()`](https://niphr.github.io/csstyle/reference/theme.md)

## Examples

``` r
library(ggplot2)

# Default primary color scale
ggplot(mtcars, aes(x = mpg, y = hp, color = factor(cyl))) +
  geom_point() +
  scale_color_cs()


# Use warning palette
ggplot(mtcars, aes(x = mpg, y = hp, color = factor(cyl))) +
  geom_point() +
  scale_color_cs(palette = "warning")
```
