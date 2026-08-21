# Format date and datetime using journal conventions (ISO 8601)

Formats dates and datetimes with the ISO 8601 conventions that journals
use.

## Usage

``` r
format_date_as_journal(x = lubridate::today(), format = "%Y-%m-%d")

format_datetime_as_journal(
  x = lubridate::now(),
  format = "%Y-%m-%d %H:%M:%S"
)

format_datetime_as_journal_file(
  x = lubridate::now(),
  format = "%Y_%m_%d_%H%M%S"
)
```

## Arguments

- x:

  Date or datetime object to format.

- format:

  Character string that sets the output format.

## Value

Character vector of journal-formatted dates and datetimes.

## See also

[`format_date_as_nor`](https://niphr.github.io/csstyle/reference/format_date.md)
gives the Norwegian equivalents. The "Date format comparison" section of
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
demonstrates `format_date_as_journal()` and
`format_datetime_as_journal()`. That section does not demonstrate
`format_datetime_as_journal_file()`.

## Examples

``` r
# Format current date/time using journal conventions (ISO 8601)
format_date_as_journal()
#> [1] "2026-08-21"
format_datetime_as_journal()
#> [1] "2026-08-21 04:58:31"

# Format specific dates
format_date_as_journal(as.Date("2023-12-25"))
#> [1] "2023-12-25"
format_datetime_as_journal_file(as.POSIXct("2023-12-25 14:30:00"))
#> [1] "2023_12_25_143000"
```
