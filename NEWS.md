# Version 2026.7.1

## Performance

* **`save_a4()` now renders PNGs with the `ragg` AGG device** (`ragg::agg_png`)
  instead of the default `grDevices` PNG device. This is markedly faster for
  busy, many-geom ggplots (and patchwork composites) at full A4 / 300 dpi, and
  produces cleaner text. Non-PNG filenames fall back to `ggsave`'s
  extension-based device selection, so behaviour is unchanged for them. `ragg`
  added to Imports.

# Version 2025.8.19

## Maintenance

* Updated version for August 2025 release

# Version 2025.1.31

## Major Features

* **Dual formatting system**: Added complete journal formatting functions alongside existing Norwegian formatting
* **Journal number formatting**: 15 new functions (`format_num_as_journal_*`) with international standards (comma thousands, decimal point, "NA" for missing)
* **Journal date formatting**: 3 new functions using ISO 8601 standards (`format_date_as_journal`, `format_datetime_as_journal`, `format_datetime_as_journal_file`)
* **Comprehensive test suite**: Added 79 tests across 5 test files covering all formatting functions
* **Complete vignette**: New vignette with side-by-side comparisons of Norwegian vs journal formatting

## Documentation

* **Reorganized pkgdown.yml**: Functions now grouped by user intent (Visualization, Norwegian formatting, Journal formatting) instead of technical implementation
* **Updated DESCRIPTION**: Comprehensive description reflecting dual formatting capabilities
* **Enhanced README.md**: Updated with key features and dual formatting system overview
* **Function examples**: Added runnable examples to all 37+ exported functions
* **Internal documentation**: Added @noRd to non-exported helper functions

## Repository Cleanup

* **Removed outdated files**: Cleaned up 11 development files and old vignette directories
* **Non-portable files**: Removed .DS_Store files for CRAN compliance
* **Updated LICENSE**: Year updated to 2025
* **Created CLAUDE.md**: Added development guidance and lessons learned

## Bug Fixes

* **Fixed version format**: Removed leading zeroes (2025.01.31 → 2025.1.31)
* **Enhanced documentation**: Fixed missing documentation and improved function organization

# Version 2023.12.22

- Bug fix in format_location_code_as_character function (line assignment error)
- Internal function documentation improvements
- Package preparation for CRAN submission

# Version 2023.4.21

- Reintroduction of `plot_epicurve`
- Vignette for epicurves
- Vignette for cstyle

# Version 2023.4.18

- Consistent renaming of formatting functions. 
