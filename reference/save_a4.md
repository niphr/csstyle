# Save a ggplot2 plot at A4 size

Saves a ggplot2 plot with A4 paper dimensions.

## Usage

``` r
save_a4(q, filename, landscape = T, scaling_factor = 1)
```

## Arguments

- q:

  ggplot2 plot object to save.

- filename:

  Character string. The output filename, including the extension.

- landscape:

  Logical. Set to `TRUE` for landscape orientation. Default `TRUE`.

- scaling_factor:

  Numeric. Scales the A4 dimensions. Default 1.

## Value

Nothing (called for side effects).

## Details

`save_a4()` renders PNG output with the `ragg` AGG device,
[`ragg::agg_png`](https://ragg.r-lib.org/reference/agg_png.html). That
device is markedly faster than the default `grDevices` PNG device for
busy, many-geom ggplot2 plots, and it gives cleaner text. For a filename
that is not a PNG,
[`ggsave()`](https://ggplot2.tidyverse.org/reference/ggsave.html)
selects the device from the extension.

## See also

[`theme_cs`](https://niphr.github.io/csstyle/reference/theme.md) is the
Core Surveillance plot theme.
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
does not demonstrate `save_a4()`.

## Examples

``` r
library(ggplot2)

# Create a plot
p <- ggplot(mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  theme_cs()

if (FALSE) { # \dontrun{
# Save in landscape A4
save_a4(p, "myplot.png")

# Save in portrait A4 with larger scaling
save_a4(p, "myplot_large.png", landscape = FALSE, scaling_factor = 1.5)
} # }
```
