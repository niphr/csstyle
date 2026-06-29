# Set global configuration parameters for location code formatting

This function sets global parameters that control how location codes are
formatted throughout the package.

## Usage

``` r
set_global(
  location_code_to_factor_label = "location_name",
  location_code_to_factor_label_if_not_unique = "location_name_description_nb"
)
```

## Arguments

- location_code_to_factor_label:

  Column name to use for location labels (default: "location_name")

- location_code_to_factor_label_if_not_unique:

  Column name to use when location names are not unique (default:
  "location_name_description_nb")

## Value

NULL (invisibly) - function called for side effects

## See also

Other csstyle_utilities:
[`colors`](https://niphr.github.io/csstyle/reference/colors.md),
[`display_all_palettes()`](https://niphr.github.io/csstyle/reference/display_all_palettes.md),
[`every_nth()`](https://niphr.github.io/csstyle/reference/every_nth.md)

## Examples

``` r
# Set global location formatting preferences
set_global(
  location_code_to_factor_label = "custom_name",
  location_code_to_factor_label_if_not_unique = "custom_description"
)

# Reset to defaults
set_global()
```
