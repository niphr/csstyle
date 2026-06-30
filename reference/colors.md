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

  Named character vector of hex codes "H1" to "H12".

- base:

  The base color (element "H1" of `named_colors`).

- palettes:

  Named list of palettes. The `primary` palettes have 1 to 12 levels
  (`primary_1` to `primary_12`); `warning_3` has 3 levels; `posneg_1`
  and `posneg_2` have 1 and 2 levels.

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
