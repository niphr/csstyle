# Changelog

## Version 2026.8.4

### Documentation

- **`README.md` rewritten as a landing page.** It now carries
  installation, one quick start, and a which-function-do-I-want table
  that routes all 52 exports by task. Depth stays in
  [`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md);
  the home page body stays in `index.md`.
- **`@seealso` now reaches every export.** Seven help pages carried
  none: `format_date`, `format_date_as_journal`, `format_cstidy_age_as`,
  `format_location_code_as`, `pretty_breaks`, `save_a4` and `view_html`.
  Each `@family` on those four `@rdname` pages had every member on one
  page, so roxygen2 emitted no `\seealso` at all. Where the vignette
  genuinely demonstrates a function the new text names the section;
  where it does not, it says so.
- **[`print.github_code()`](https://niphr.github.io/csstyle/reference/print.github_code.md)
  examples now run.** They build a `github_code` object directly instead
  of fetching one, so the page is no longer entirely `\dontrun{}`.
  [`as_github_code()`](https://niphr.github.io/csstyle/reference/as_github_code.md)
  keeps `\dontrun{}`:
  [`readLines()`](https://rdrr.io/r/base/readLines.html) fetches the URL
  and needs an internet connection.

### Bug fixes

- **Corrected two false statements in the `colors` documentation.**
  `named_colors` was described as twelve hex codes, but “H8” to “H12”
  are R color names (`"blue"`, `"green"`, `"yellow"`, `"black"`,
  `"purple"`). The palette list was described as containing `posneg_1`;
  it does not, so `scale_color_cs(palette = "posneg")` accepts 2 levels
  only.

### Maintenance

- `^Rplots\.pdf$` added to `.Rbuildignore`.

## Version 2026.7.1

### Performance

- **[`save_a4()`](https://niphr.github.io/csstyle/reference/save_a4.md)
  now renders PNGs with the `ragg` AGG device**
  ([`ragg::agg_png`](https://ragg.r-lib.org/reference/agg_png.html))
  instead of the default `grDevices` PNG device. This is markedly faster
  for busy, many-geom ggplots (and patchwork composites) at full A4 /
  300 dpi, and produces cleaner text. Non-PNG filenames fall back to
  `ggsave`’s extension-based device selection, so behaviour is unchanged
  for them. `ragg` added to Imports.

## Version 2025.8.19

### Maintenance

- Updated version for August 2025 release

## Version 2025.1.31

### Major Features

- **Dual formatting system**: Added complete journal formatting
  functions alongside existing Norwegian formatting
- **Journal number formatting**: 15 new functions
  (`format_num_as_journal_*`) with international standards (comma
  thousands, decimal point, “NA” for missing)
- **Journal date formatting**: 3 new functions using ISO 8601 standards
  (`format_date_as_journal`, `format_datetime_as_journal`,
  `format_datetime_as_journal_file`)
- **Comprehensive test suite**: Added 79 tests across 5 test files
  covering all formatting functions
- **Complete vignette**: New vignette with side-by-side comparisons of
  Norwegian vs journal formatting

### Documentation

- **Reorganized pkgdown.yml**: Functions now grouped by user intent
  (Visualization, Norwegian formatting, Journal formatting) instead of
  technical implementation
- **Updated DESCRIPTION**: Comprehensive description reflecting dual
  formatting capabilities
- **Enhanced README.md**: Updated with key features and dual formatting
  system overview
- **Function examples**: Added runnable examples to all 37+ exported
  functions
- **Internal documentation**: Added [@noRd](https://github.com/noRd) to
  non-exported helper functions

### Repository Cleanup

- **Removed outdated files**: Cleaned up 11 development files and old
  vignette directories
- **Non-portable files**: Removed .DS_Store files for CRAN compliance
- **Updated LICENSE**: Year updated to 2025
- **Created CLAUDE.md**: Added development guidance and lessons learned

### Bug Fixes

- **Fixed version format**: Removed leading zeroes (2025.01.31 →
  2025.1.31)
- **Enhanced documentation**: Fixed missing documentation and improved
  function organization

## Version 2023.12.22

- Bug fix in format_location_code_as_character function (line assignment
  error)
- Internal function documentation improvements
- Package preparation for CRAN submission

## Version 2023.4.21

- Reintroduction of `plot_epicurve`
- Vignette for epicurves
- Vignette for cstyle

## Version 2023.4.18

- Consistent renaming of formatting functions.
