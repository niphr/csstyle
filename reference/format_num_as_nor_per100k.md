# Format numbers per 100k with Norwegian conventions (0 digits)

Formats numeric values as "per 100k" rates using Norwegian number
conventions with 0 decimal places.

Formats numeric values as "per 100k" rates using Norwegian number
conventions with 1 decimal place.

Formats numeric values as "per 100k" rates using Norwegian number
conventions with 2 decimal places.

## Usage

``` r
format_num_as_nor_per100k_0(x)

format_num_as_nor_per100k_1(x)

format_num_as_nor_per100k_2(x)
```

## Arguments

- x:

  Numeric vector to format

## Value

Character vector with Norwegian-formatted numbers and "/100k" suffix

Character vector with Norwegian-formatted numbers and "/100k" suffix

Character vector with Norwegian-formatted numbers and "/100k" suffix

## See also

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_num.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

## Examples

``` r
# Format rates per 100k population
format_num_as_nor_per100k_0(c(123.45, 678.90, NA))
#> [1] "123 /100k" "679 /100k" "IK"       
format_num_as_nor_per100k_1(c(123.45, 678.90, NA))
#> [1] "123,5 /100k" "678,9 /100k" "IK"         
format_num_as_nor_per100k_2(c(123.45, 678.90, NA))
#> [1] "123,45 /100k" "678,90 /100k" "IK"          
```
