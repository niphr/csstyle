# Format date and datetime using Norwegian conventions

Formats dates and datetimes with Norwegian conventions, or with a
filename-safe format.

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

  Date or datetime object to format.

- format:

  Character string that sets the output format.

## Value

Character vector of formatted dates and datetimes.

## See also

[`format_date_as_journal`](https://niphr.github.io/csstyle/reference/format_date_as_journal.md)
gives the ISO 8601 equivalents. The "Norwegian date format" section of
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
demonstrates all three functions on this page.

## Examples

``` r
# Format current date/time using Norwegian conventions
format_date_as_nor()
#> [1] "06.08.2026"
format_datetime_as_nor()
#> [1] "06.08.2026 kl. 08:06"

# Format specific dates
format_date_as_nor(as.Date("2023-12-25"))
#> [1] "25.12.2023"
format_datetime_as_file(as.POSIXct("2023-12-25 14:30:00"))
#> [1] "2023_12_25_143000"
```
