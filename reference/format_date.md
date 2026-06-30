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

## Examples

``` r
# Format current date/time using Norwegian conventions
format_date_as_nor()
#> [1] "30.06.2026"
format_datetime_as_nor()
#> [1] "30.06.2026 kl. 06:06"

# Format specific dates
format_date_as_nor(as.Date("2023-12-25"))
#> [1] "25.12.2023"
format_datetime_as_file(as.POSIXct("2023-12-25 14:30:00"))
#> [1] "2023_12_25_143000"
```
