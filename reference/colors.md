# Color palette definitions for CSIDS styling

A list containing named colors, base colors, and predefined color
palettes for consistent visualization styling.

## Usage

``` r
colors
```

## Format

An object of class `list` of length 4.

## Value

List with color definitions including named_colors, base color, and
palettes

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
