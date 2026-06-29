# Format numbers with Norwegian conventions (0 digits)

Formats numeric values using Norwegian number conventions with 0 decimal
places.

Formats numeric values using Norwegian number conventions with 1 decimal
place.

Formats numeric values using Norwegian number conventions with 2 decimal
places.

## Usage

``` r
format_num_as_nor_num_0(x)

format_num_as_nor_num_1(x)

format_num_as_nor_num_2(x)
```

## Arguments

- x:

  Numeric vector to format

## Value

Character vector with Norwegian-formatted numbers

Character vector with Norwegian-formatted numbers

Character vector with Norwegian-formatted numbers

## See also

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_per100k.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_per100k.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

Other csstyle_formatters:
[`format_num_as_nor_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog10.md),
[`format_num_as_nor_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invlog2.md),
[`format_num_as_nor_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_invloge.md),
[`format_num_as_nor_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_per100k.md),
[`format_num_as_nor_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_nor_perc.md)

## Examples

``` r
# Basic number formatting
format_num_as_nor_num_0(c(1234.56, 9876.54, NA))
#> [1] "1235" "9877" "IK"  
format_num_as_nor_num_1(c(1234.56, 9876.54, NA))
#> [1] "1234,6" "9876,5" "IK"    
format_num_as_nor_num_2(c(1234.56, 9876.54, NA))
#> [1] "1234,56" "9876,54" "IK"     
```
