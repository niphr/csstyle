# Format numbers on inverse natural log scale with Norwegian conventions (1 decimal place)

Applies `exp(x)`, then formats with Norwegian conventions and 1 decimal
place.

Applies `exp(x)`, then formats with Norwegian conventions and 2 decimal
places.

## Usage

``` r
format_num_as_nor_invloge_1(x)

format_num_as_nor_invloge_2(x)
```

## Arguments

- x:

  Numeric vector of values on the natural log scale.

## Value

Character vector of Norwegian-formatted numbers.

Character vector of Norwegian-formatted numbers.

## See also

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md),
[`format_num_as_nor_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_per100k.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

## Examples

``` r
# Transform natural log values back to original scale
format_num_as_nor_invloge_1(c(0, 1, 2))  # exp(0), exp(1), exp(2)
#> [1] "1,0" "2,7" "7,4"
format_num_as_nor_invloge_2(c(0, 1, 2))
#> [1] "1,00" "2,72" "7,39"
```
