# Format numbers with journal conventions (0 digits)

Formats numeric values using journal number conventions with 0 decimal
places.

Formats numeric values using journal number conventions with 1 decimal
place.

Formats numeric values using journal number conventions with 2 decimal
places.

## Usage

``` r
format_num_as_journal_num_0(x)

format_num_as_journal_num_1(x)

format_num_as_journal_num_2(x)
```

## Arguments

- x:

  Numeric vector to format

## Value

Character vector with journal-formatted numbers

Character vector with journal-formatted numbers

Character vector with journal-formatted numbers

## See also

Other csstyle_journal_formatters:
[`format_num_as_journal_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog10.md),
[`format_num_as_journal_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog2.md),
[`format_num_as_journal_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invloge.md),
[`format_num_as_journal_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_per100k.md),
[`format_num_as_journal_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_perc.md)

## Examples

``` r
# Journal number formatting
format_num_as_journal_num_0(c(1234.56, 9876.54, NA))
#> [1] "1,235" "9,877" "NA"   
format_num_as_journal_num_1(c(1234.56, 9876.54, NA))
#> [1] "1,234.6" "9,876.5" "NA"     
format_num_as_journal_num_2(c(1234.56, 9876.54, NA))
#> [1] "1,234.56" "9,876.54" "NA"      
```
