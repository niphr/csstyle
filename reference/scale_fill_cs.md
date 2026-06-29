# ggplot2 fill scale using CSIDS color palettes

Creates a discrete fill scale for ggplot2 using predefined CSIDS color
palettes.

## Usage

``` r
scale_fill_cs(..., palette = "primary", direction = 1)
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

A ggplot2 discrete fill scale

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
