# Format cstidy age codes as factor with Norwegian text

Converts age codes such as "009" or "005_014" to readable Norwegian age
labels.

Converts age codes to readable Norwegian age labels and returns them as
a character vector.

## Usage

``` r
format_cstidy_age_as_factor(x)

format_cstidy_age_as_character(x)
```

## Arguments

- x:

  Character vector of age codes or age group codes.

## Value

Factor vector of Norwegian age labels, for example "9 år" or "5-14 år".

Character vector of Norwegian age labels, for example "9 år" or "5-14
år".

## See also

[`format_location_code_as_factor`](https://niphr.github.io/csstyle/reference/format_location_code_as.md)
applies the same factor and character pair to Norwegian location codes.
[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
does not demonstrate these two age functions.

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
