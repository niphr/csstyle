## Submission

Update to version 2026.7.1.

`save_a4()` now renders PNGs with the `ragg` AGG device instead of the default
grDevices PNG device. This is markedly faster for busy, many-geom ggplots at
full A4 / 300 dpi and produces cleaner text. Non-PNG filenames fall back to
`ggsave()`'s extension-based device selection, so their behaviour is unchanged.
`ragg` is added to Imports.

## Test environments

* local Windows 11, R 4.4.2 (`R CMD check --no-manual --as-cran`)
* GitHub Actions, ubuntu-latest, R release (`--no-manual --as-cran`)

## R CMD check results

0 errors | 0 warnings | 0 notes

The local run additionally reports "unable to verify current time". That is the
offline clock check on a network without access to the time service, not a
package problem; it does not appear on CI.

## Downstream dependencies

None.
