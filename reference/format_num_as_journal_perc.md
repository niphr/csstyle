# Format numbers as percentages with journal conventions (0 digits)

Formats numeric values as percentages using journal number conventions
with 0 decimal places.

Formats numeric values as percentages using journal number conventions
with 1 decimal place.

Formats numeric values as percentages using journal number conventions
with 2 decimal places.

## Usage

``` r
format_num_as_journal_perc_0(x)

format_num_as_journal_perc_1(x)

format_num_as_journal_perc_2(x)
```

## Arguments

- x:

  Numeric vector to format

## Value

Character vector with journal-formatted numbers and "

Character vector with journal-formatted numbers and "

Character vector with journal-formatted numbers and "

## See also

Other csstyle_journal_formatters:
[`format_num_as_journal_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog10.md),
[`format_num_as_journal_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog2.md),
[`format_num_as_journal_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invloge.md),
[`format_num_as_journal_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_num.md),
[`format_num_as_journal_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_per100k.md)

## Examples

``` r
# Format percentages
format_num_as_journal_perc_0(c(12.34, 56.78, NA))
#> [1] "12%" "57%" "NA" 
format_num_as_journal_perc_1(c(12.34, 56.78, NA))  
#> [1] "12.3%" "56.8%" "NA"   
format_num_as_journal_perc_2(c(12.34, 56.78, NA))
#> [1] "12.34%" "56.78%" "NA"    
```
