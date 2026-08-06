# ggplot2 fill scale using Core Surveillance color palettes

Creates a discrete ggplot2 fill scale from a predefined Core
Surveillance color palette.

## Usage

``` r
scale_fill_cs(..., palette = "primary", direction = 1)
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

A ggplot2 discrete fill scale.

## See also

Other csstyle_ggplot2:
[`scale_color_cs()`](https://niphr.github.io/csstyle/reference/scale_color_cs.md),
[`theme_cs()`](https://niphr.github.io/csstyle/reference/theme.md)

## Examples

``` r
library(ggplot2)

# Default primary fill scale
ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_cs()


# Use posneg palette
ggplot(mtcars, aes(x = factor(vs), fill = factor(vs))) +
  geom_bar() +
  scale_fill_cs(palette = "posneg")
```
