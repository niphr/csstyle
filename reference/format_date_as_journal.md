# Format date and datetime using journal conventions (ISO 8601)

Functions for formatting dates and datetimes using ISO 8601 journal
conventions.

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

  Date or datetime object to format

- format:

  Character string specifying the desired format

## Value

Character vector with journal-formatted dates/datetimes

## Examples

``` r
# Format current date/time using journal conventions (ISO 8601)
format_date_as_journal()
#> [1] "2026-06-30"
format_datetime_as_journal()
#> [1] "2026-06-30 11:24:23"

# Format specific dates
format_date_as_journal(as.Date("2023-12-25"))
#> [1] "2023-12-25"
format_datetime_as_journal_file(as.POSIXct("2023-12-25 14:30:00"))
#> [1] "2023_12_25_143000"
```
