# Format numbers as percentages with Norwegian conventions (0 decimal places)

Formats numeric values as percentages with Norwegian conventions and 0
decimal places.

Formats numeric values as percentages with Norwegian conventions and 1
decimal place.

Formats numeric values as percentages with Norwegian conventions and 2
decimal places.

## Usage

``` r
format_num_as_nor_perc_0(x)

format_num_as_nor_perc_1(x)

format_num_as_nor_perc_2(x)
```

## Arguments

- x:

  Numeric vector to format.

## Value

Character vector of Norwegian-formatted numbers with a "

Character vector of Norwegian-formatted numbers with a "

Character vector of Norwegian-formatted numbers with a "

## See also

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md),
[`format_num_as_nor_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_per100k.md)

## Examples

``` r
# Format percentages
format_num_as_nor_perc_0(c(12.34, 56.78, NA))
#> [1] "12 %" "57 %" "IK"  
format_num_as_nor_perc_1(c(12.34, 56.78, NA))
#> [1] "12,3 %" "56,8 %" "IK"    
format_num_as_nor_perc_2(c(12.34, 56.78, NA))
#> [1] "12,34 %" "56,78 %" "IK"     
```
