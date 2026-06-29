# Convert Norwegian location codes to factor with readable labels

Converts Norwegian location codes (municipality/county codes) to factors
with human-readable Norwegian location names.

Converts Norwegian location codes to character vector with
human-readable Norwegian location names.

## Usage

``` r
format_location_code_as_factor(
  x,
  label = NULL,
  label_if_not_unique = NULL,
  reference = csdata::nor_locations_names(),
  direction = 1
)

format_location_code_as_character(
  x,
  label = NULL,
  label_if_not_unique = NULL,
  reference = csdata::nor_locations_names(),
  direction = 1
)
```

## Arguments

- x:

  Character vector of Norwegian location codes

- label:

  Column name from reference data to use for labels (default: uses
  global setting)

- label_if_not_unique:

  Column name to use when location names are not unique (default: uses
  global setting)

- reference:

  Data.table with location reference data (default:
  csdata::nor_locations_names())

- direction:

  Integer: 1 for normal order, -1 for reversed order (default: 1)

## Value

Factor vector with Norwegian location names as labels

Character vector with Norwegian location names

## Examples

``` r
# \donttest{
# Convert location codes to factors (requires csdata package)
location_codes <- c("03", "11", "15")
format_location_code_as_factor(location_codes)
#> [1] <NA> <NA> <NA>
#> Levels: 
format_location_code_as_character(location_codes)
#> [1] NA NA NA
# }
```
