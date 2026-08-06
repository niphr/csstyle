# Format numbers per 100k with journal conventions (0 decimal places)

Formats numeric values as rates per 100k with journal conventions and 0
decimal places.

Formats numeric values as rates per 100k with journal conventions and 1
decimal place.

Formats numeric values as rates per 100k with journal conventions and 2
decimal places.

## Usage

``` r
format_num_as_journal_per100k_0(x)

format_num_as_journal_per100k_1(x)

format_num_as_journal_per100k_2(x)
```

## Arguments

- x:

  Numeric vector to format.

## Value

Character vector of journal-formatted numbers with a "/100k" suffix.

Character vector of journal-formatted numbers with a "/100k" suffix.

Character vector of journal-formatted numbers with a "/100k" suffix.

## See also

Other csstyle_journal_formatters:
[`format_num_as_journal_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog10.md),
[`format_num_as_journal_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog2.md),
[`format_num_as_journal_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invloge.md),
[`format_num_as_journal_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_num.md),
[`format_num_as_journal_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_perc.md)

## Examples

``` r
# Format rates per 100k population
format_num_as_journal_per100k_0(c(123.45, 678.90, NA))
#> [1] "123/100k" "679/100k" "NA"      
format_num_as_journal_per100k_1(c(123.45, 678.90, NA))
#> [1] "123.5/100k" "678.9/100k" "NA"        
format_num_as_journal_per100k_2(c(123.45, 678.90, NA))
#> [1] "123.45/100k" "678.90/100k" "NA"         
```
