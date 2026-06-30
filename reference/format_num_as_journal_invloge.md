# Format numbers on inverse natural log scale with journal conventions (1 digit)

Formats values by applying exp(x) transformation then formatting with
journal conventions and 1 decimal place.

Formats values by applying exp(x) transformation then formatting with
journal conventions and 2 decimal places.

## Usage

``` r
format_num_as_journal_invloge_1(x)

format_num_as_journal_invloge_2(x)
```

## Arguments

- x:

  Numeric vector (natural log scale values)

## Value

Character vector with journal-formatted numbers

Character vector with journal-formatted numbers

## See also

Other csstyle_journal_formatters:
[`format_num_as_journal_invlog10_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog10.md),
[`format_num_as_journal_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog2.md),
[`format_num_as_journal_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_num.md),
[`format_num_as_journal_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_per100k.md),
[`format_num_as_journal_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_perc.md)

## Examples

``` r
# Transform natural log values back to original scale
format_num_as_journal_invloge_1(c(0, 1, 2))  # exp(0), exp(1), exp(2)
#> [1] "1.0" "2.7" "7.4"
format_num_as_journal_invloge_2(c(0, 1, 2))
#> [1] "1.00" "2.72" "7.39"
```
