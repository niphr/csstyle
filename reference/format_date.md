# Format date and datetime using Norwegian conventions

Functions for formatting dates and datetimes using Norwegian conventions
or for safe filename use.

## Usage

``` r
format_date_as_nor(x = lubridate::today(), format = "%d.%m.%Y")

format_datetime_as_nor(
  x = lubridate::now(),
  format = "%d.%m.%Y kl. %H:%S"
)

format_datetime_as_file(x = lubridate::now(), format = "%Y_%m_%d_%H%M%S")
```

## Arguments

- x:

  Date or datetime object to format

- format:

  Character string specifying the desired format

## Value

Character vector with formatted dates/datetimes

## See also

[`format_date_as_journal`](https://niphr.github.io/csstyle/reference/format_date_as_journal.md)
for the ISO 8601 equivalents. The "Norwegian date format" section of
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
demonstrates all three of these functions.

## Examples

``` r
# Format current date/time using Norwegian conventions
format_date_as_nor()
#> [1] "04.08.2026"
format_datetime_as_nor()
#> [1] "04.08.2026 kl. 18:59"

# Format specific dates
format_date_as_nor(as.Date("2023-12-25"))
#> [1] "25.12.2023"
format_datetime_as_file(as.POSIXct("2023-12-25 14:30:00"))
#> [1] "2023_12_25_143000"
```
