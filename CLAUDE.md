# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working
with code in this repository.

## Package Overview

**csstyle** is an R package for standardizing outputs (graphs, tables,
reports) using CSIDS visual guidelines. It provides consistent ggplot2
themes, color palettes, and formatting functions to reduce output
variation across projects.

## Development Commands

### Core R Package Development

``` r
# Load package functions during development
devtools::load_all(".")

# Generate documentation from roxygen comments
devtools::document()

# Standard package check
devtools::check()

# REQUIRED: CRAN compliance check (always run before releases)
R CMD check . --as-cran

# Build and install
devtools::build()
devtools::install()
```

### Testing

``` r
# Run all tests
devtools::test()

# Run specific test file
testthat::test_file("tests/testthat/test_x.R")
```

### Documentation Building

``` r
# Build pkgdown site
pkgdown::build_site()
```

## Code Architecture

### Core Components

1.  **Environment & Global Settings** (`R/1_environments.r`):
    - Global configuration via `global` environment
    - [`set_global()`](https://niphr.github.io/csstyle/reference/set_global.md)
      function for location code formatting preferences
    - Central `colors` list defining all CSIDS color palettes
2.  **Color System** (`R/2_palettes.R`):
    - Named colors (H1-H12) with specific hex codes
    - Palette types: `primary`, `warning`, `posneg`
    - Dynamic palette generation for 1-12 levels
    - [`scale_color_cs()`](https://niphr.github.io/csstyle/reference/scale_color_cs.md)
      and
      [`scale_fill_cs()`](https://niphr.github.io/csstyle/reference/scale_fill_cs.md)
      ggplot2 integration
3.  **Theme System** (`R/ggplot2_theme.R`):
    - [`theme_cs()`](https://niphr.github.io/csstyle/reference/theme.md) -
      Main CSIDS ggplot2 theme
    - Configurable grid lines, legend position, axis orientation
    - Panel-on-top option for layered visualizations
4.  **Dual Number Formatting System** (`R/format_num.R`):
    - **Norwegian conventions** (`format_*_as_nor`): comma decimal,
      space thousands, “IK” for missing values
    - **Journal conventions** (`format_*_as_journal`): decimal point,
      comma thousands, “NA” for missing values  
    - Functions for different contexts: percentages (`_perc`), per 100k
      rates (`_per100k`)
    - Log scale transformations (`_invlog2`, `_invlog10`, `_invloge`)
    - Precision variants (0, 1, 2 decimal places)
    - Internal helper functions (`format_num_as_nor`,
      `format_num_as_journal`) with `@noRd`
5.  **Dual Date Formatting System** (`R/format_date.R`):
    - **Norwegian conventions** (`format_*_as_nor`): “dd.mm.yyyy” format
      with “kl.” prefix for times
    - **Journal conventions** (`format_*_as_journal`): ISO 8601 standard
      (“yyyy-mm-dd”, “yyyy-mm-dd hh:mm:ss”)
    - File-safe datetime formats for both systems
    - Consistent API pattern matching number formatting functions

### File Organization Pattern

- **Numbered files** (`1_`, `2_`, `3_`): Core infrastructure loaded in
  order
- **Functional files**: Specific feature implementations (formatting,
  utilities, etc.)
- **Development folder** (`dev/`): Experimental/prototype functions not
  yet in main package

### Key Design Principles

- **Consistency over flexibility**: Limited, standardized options rather
  than infinite customization
- **Dual formatting systems**: Separate Norwegian (domestic) and journal
  (international) formatting to serve different audiences
- **Consistent API patterns**: Parallel function naming
  (`format_*_as_nor` vs `format_*_as_journal`) for predictable usage
- **CSIDS branding**: All visual elements follow organizational style
  guidelines
- **Modular palette system**: Colors defined centrally, applied
  consistently across functions

## Package Dependencies

**Core dependencies**: data.table, ggplot2, glue, magrittr, rstudioapi,
stringr, csdata

## Important Notes

- Package follows CSIDS organizational styling standards
- Color palette system is hierarchical (primary_1 through primary_12)  
- **Dual formatting systems**:
  - Norwegian functions (`format_*_as_nor`) return “IK” for missing
    values, use Norwegian conventions
  - Journal functions (`format_*_as_journal`) return “NA” for missing
    values, use international standards
- The package focuses on output standardization rather than data
  analysis
- **Versioning**: Uses YYYY.MM.DD format (differs from cs9 and swereg
  packages which use YY.M.D)

## Journal Formatting System

The package provides parallel formatting functions for academic
publication:

**Number formatting differences:** - Norwegian: `"1234,5"`, `"12,3 %"`,
`"123,5 /100k"`, `"IK"` for missing - Journal: `"1,234.5"`, `"12.3%"`,
`"123.5/100k"`, `"NA"` for missing

**Date formatting differences:**  
- Norwegian: `"25.12.2023"`, `"25.12.2023 kl. 14:30"` - Journal:
`"2023-12-25"`, `"2023-12-25 14:30:00"` (ISO 8601)

This dual approach ensures consistent output for both domestic Norwegian
reports and international academic publications.
