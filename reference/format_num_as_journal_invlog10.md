# Format numbers on inverse log-10 scale with journal conventions (1 digit)

Formats values by applying 10^x transformation then formatting with
journal conventions and 1 decimal place.

Formats values by applying 10^x transformation then formatting with
journal conventions and 2 decimal places.

## Usage

``` r
format_num_as_journal_invlog10_1(x)

format_num_as_journal_invlog10_2(x)
```

## Arguments

- x:

  Numeric vector (log-10 scale values)

## Value

Character vector with journal-formatted numbers

Character vector with journal-formatted numbers

## See also

Other csstyle_journal_formatters:
[`format_num_as_journal_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog2.md),
[`format_num_as_journal_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invloge.md),
[`format_num_as_journal_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_num.md),
[`format_num_as_journal_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_per100k.md),
[`format_num_as_journal_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_perc.md)

Other csstyle_journal_formatters:
[`format_num_as_journal_invlog2_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invlog2.md),
[`format_num_as_journal_invloge_1()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_invloge.md),
[`format_num_as_journal_num_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_num.md),
[`format_num_as_journal_per100k_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_per100k.md),
[`format_num_as_journal_perc_0()`](https://niphr.github.io/csstyle/reference/format_num_as_journal_perc.md)

## Examples

``` r
# Transform log10 values back to original scale
format_num_as_journal_invlog10_1(c(1, 2, 3))  # 10^1, 10^2, 10^3
#> [1] "10.0"    "100.0"   "1,000.0"
format_num_as_journal_invlog10_2(c(1, 2, 3))
#> [1] "10.00"    "100.00"   "1,000.00"
```
