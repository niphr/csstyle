# Save ggplot in A4 scale

Saves a ggplot2 plot with A4 paper dimensions.

## Usage

``` r
save_a4(q, filename, landscape = T, scaling_factor = 1)
```

## Arguments

- q:

  ggplot2 plot object to save

- filename:

  Character string specifying the output filename (with extension)

- landscape:

  Logical indicating if plot should use landscape orientation (default:
  TRUE)

- scaling_factor:

  Numeric scaling factor for A4 dimensions (default: 1)

## Value

Nothing (called for side effects).

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
