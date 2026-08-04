# csstyle <a href="https://niphr.github.io/csstyle/"><img src="man/figures/logo.png" align="right" width="120" /></a>

[![CRAN status](https://www.r-pkg.org/badges/version/csstyle)](https://cran.r-project.org/package=csstyle)
[![CRAN downloads](https://cranlogs.r-pkg.org/badges/csstyle)](https://cran.r-project.org/package=csstyle)

## Overview 

[csstyle](https://niphr.github.io/csstyle/) is a comprehensive styling system for consistent visual outputs using Core Surveillance guidelines. It provides ggplot2 themes, color palettes, and dual formatting functions to standardize graphs, tables, and reports.

**Key Features:**

- **ggplot2 themes** with Core Surveillance styling and configurable options
- **Color palettes** with hierarchical system (primary, warning, posneg)
- **Dual formatting system**:
  - **Norwegian formatting** for domestic reports (comma decimal, space thousands, "IK" for missing)
  - **Journal formatting** for academic publications (decimal point, comma thousands, "NA" for missing)
- **Number formatting** for percentages, per-100k rates, and log transformations
- **Date formatting** with Norwegian conventions vs ISO 8601 standards

The package focuses on consistency over flexibility to ensure reproducible, professional outputs across different research contexts.

## Installation

```r
pak::pak("niphr/csstyle")
```

## Quick start

```r
library(csstyle)
library(ggplot2)

ggplot(mtcars, aes(mpg, hp, colour = factor(cyl))) +
  geom_point() +
  scale_color_cs() +
  theme_cs()

format_num_as_nor_num_1(12345.67)      # "12 345,7"
format_num_as_journal_num_1(12345.67)  # "12,345.7"
```

## Which function do I want?

All 52 exported functions fall into one of these rows. A `*` stands for the
`num`, `perc` and `per100k` variants, each with a `_0`, `_1` or `_2` digit
suffix, plus the `invlog2`, `invlog10` and `invloge` variants, each with `_1`
or `_2`.

| Goal | Function |
| --- | --- |
| Style a plot | `theme_cs()` |
| Turn the x-axis labels vertical | `set_x_axis_vertical()` |
| Color or fill by a palette | `scale_color_cs()`, `scale_fill_cs()` |
| Inspect the palettes | `display_all_palettes()`, `colors` |
| Thin a crowded discrete axis | `every_nth()` |
| Round off continuous axis breaks | `pretty_breaks()` |
| Write an A4 figure to disk | `save_a4()` |
| Numbers for a Norwegian report | `format_num_as_nor_*()` — 15 functions |
| Numbers for a journal | `format_num_as_journal_*()` — 15 functions |
| Dates for a Norwegian report | `format_date_as_nor()`, `format_datetime_as_nor()` |
| Dates for a journal (ISO 8601) | `format_date_as_journal()`, `format_datetime_as_journal()` |
| Timestamp a filename | `format_datetime_as_file()`, `format_datetime_as_journal_file()` |
| Label Norwegian location codes | `format_location_code_as_factor()`, `format_location_code_as_character()` |
| Label cstidy age codes | `format_cstidy_age_as_factor()`, `format_cstidy_age_as_character()` |
| Change the location label defaults | `set_global()` |
| Read a source file off GitHub | `as_github_code()` |
| Preview HTML in the RStudio viewer | `view_html()` |

## Documentation

Reference pages and the introductory vignette live on the package website:
<https://niphr.github.io/csstyle/>. Run `help(package="csstyle")` for the full
function list, or `vignette("csstyle")`, which works through the themes, the
palettes, and number and date formatting.
