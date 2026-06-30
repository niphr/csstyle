# ggplot2 color scale using Core Surveillance color palettes

Creates a discrete color scale for ggplot2 using predefined Core
Surveillance color palettes.

## Usage

``` r
scale_color_cs(..., palette = "primary", direction = 1)
```

## Arguments

- ...:

  Additional arguments passed to ggplot2::discrete_scale()

- palette:

  Name of color palette to use (default: "primary"). Options: "primary",
  "warning", "posneg"

- direction:

  Direction of color palette: 1 for normal, -1 for reversed (default: 1)

## Value

A ggplot2 discrete color scale

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
