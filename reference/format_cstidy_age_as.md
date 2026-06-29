# Format cstidy age codes as factor with Norwegian text

Converts age codes (e.g., "009", "005_014") to readable Norwegian age
labels with proper formatting.

Converts age codes to readable Norwegian age labels and returns as
character vector.

## Usage

``` r
format_cstidy_age_as_factor(x)

format_cstidy_age_as_character(x)
```

## Arguments

- x:

  Character vector containing age codes or age group codes

## Value

Factor vector with Norwegian age labels (e.g., "9 år", "5-14 år")

Character vector with Norwegian age labels (e.g., "9 år", "5-14 år")

## Examples

``` r
csstyle::format_cstidy_age_as_factor("009")
#> [1] 9 år
#> Levels: 9 år
csstyle::format_cstidy_age_as_factor("005-014")
#> [1] 5-014 år
#> Levels: 5-014 år
csstyle::format_cstidy_age_as_character("009")
#> [1] "9 år"
csstyle::format_cstidy_age_as_character("005-014")
#> [1] "5-014 år"
```
