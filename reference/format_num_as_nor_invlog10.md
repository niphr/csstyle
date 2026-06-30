# Format numbers on inverse log-10 scale with Norwegian conventions (1 digit)

Formats values by applying 10^x transformation then formatting with
Norwegian conventions and 1 decimal place.

Formats values by applying 10^x transformation then formatting with
Norwegian conventions and 2 decimal places.

## Usage

``` r
format_num_as_nor_invlog10_1(x)

format_num_as_nor_invlog10_2(x)
```

## Arguments

- x:

  Numeric vector (log-10 scale values)

## Value

Character vector with Norwegian-formatted numbers

Character vector with Norwegian-formatted numbers

## See also

Other csstyle_formatters:
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md),
[`format_num_as_nor_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_per100k.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

## Examples

``` r
# Transform log10 values back to original scale
format_num_as_nor_invlog10_1(c(1, 2, 3))  # 10^1, 10^2, 10^3
#> [1] "10,0"   "100,0"  "1000,0"
format_num_as_nor_invlog10_2(c(1, 2, 3))
#> [1] "10,00"   "100,00"  "1000,00"
```
