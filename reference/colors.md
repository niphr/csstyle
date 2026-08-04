# Color definitions for Core Surveillance styling

A list holding the named colors, the base color, and the predefined
color palettes used by the Core Surveillance styling functions.

## Usage

``` r
colors
```

## Format

A list with the following elements:

- named_colors:

  Named character vector of 12 colors, "H1" to "H12". "H1" to "H7" are
  hex codes; "H8" to "H12" are R color names.

- base:

  The base color (element "H1" of `named_colors`).

- palettes:

  Named list of palettes: `primary_1` to `primary_12` (1 to 12 levels),
  `warning_3` (3 levels) and `posneg_2` (2 levels). The `posneg` family
  has no 1-level palette, so `scale_color_cs(palette = "posneg")`
  accepts 2 levels only.

- palette_names:

  Character vector of the palette family names ("primary", "posneg",
  "warning").

## Value

A list. See the Format section for the elements.

## See also

Other csstyle_utilities:
[`display_all_palettes()`](https://niphr.github.io/csstyle/reference/display_all_palettes.md),
[`every_nth()`](https://niphr.github.io/csstyle/reference/every_nth.md),
[`set_global()`](https://niphr.github.io/csstyle/reference/set_global.md)

## Examples

``` r
# Access named colors
colors$named_colors["H1"]
#>        H1 
#> "#393C61" 

# View primary palette
colors$palettes$primary_3
#>        H1        H4        H2 
#> "#393C61" "#709900" "#0975B5" 

# See all available palettes
names(colors$palettes)
#>  [1] "primary_1"  "primary_2"  "primary_3"  "primary_4"  "primary_5" 
#>  [6] "primary_6"  "primary_7"  "primary_8"  "primary_9"  "primary_10"
#> [11] "primary_11" "primary_12" "warning_3"  "posneg_2"  
```
