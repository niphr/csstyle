# Set global configuration for location code formatting

Sets the global defaults that control how location codes are turned into
labels by
[`format_location_code_as_factor`](https://niphr.github.io/csstyle/reference/format_location_code_as.md)
and
[`format_location_code_as_character`](https://niphr.github.io/csstyle/reference/format_location_code_as.md).
These defaults are used whenever those functions are called without an
explicit `label` or `label_if_not_unique`.

## Usage

``` r
set_global(
  location_code_to_factor_label = "location_name",
  location_code_to_factor_label_if_not_unique = "location_name_description_nb"
)
```

## Arguments

- location_code_to_factor_label:

  Column name in the reference data to use for location labels (default:
  "location_name").

- location_code_to_factor_label_if_not_unique:

  Column name in the reference data to use when the chosen labels are
  not unique (default: "location_name_description_nb").

## Value

Called for its side effect of updating the global configuration. Returns
the assigned value invisibly.

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
