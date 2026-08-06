# Convert Norwegian location codes to factor with readable labels

Converts Norwegian location codes (municipality and county codes) to a
factor with human-readable location names.

Converts Norwegian location codes to a character vector of
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

  Character vector of Norwegian location codes.

- label:

  Column name in the reference data to use for labels. Defaults to the
  global setting.

- label_if_not_unique:

  Column name to use when the location names are not unique. Defaults to
  the global setting.

- reference:

  Data.table of location reference data. Default
  [`csdata::nor_locations_names()`](https://niphr.github.io/csdata/reference/nor_locations_names.html).

- direction:

  Integer. Use 1 for the normal order and -1 for the reversed order.
  Default 1.

## Value

Factor vector with Norwegian location names as labels.

Character vector of Norwegian location names.

## See also

[`set_global`](https://niphr.github.io/csstyle/reference/set_global.md)
changes the default `label` and `label_if_not_unique` columns.
[`format_cstidy_age_as_factor`](https://niphr.github.io/csstyle/reference/format_cstidy_age_as.md)
applies the same factor and character pair to cstidy age codes.
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
does not demonstrate these two location functions.

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
