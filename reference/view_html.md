# View HTML in the RStudio viewer

Opens HTML content in the RStudio viewer pane.

## Usage

``` r
view_html(x)
```

## Arguments

- x:

  Character string containing HTML content to display

## Value

Nothing (called for side effects).

## See also

[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
for an overview of the package. `view_html()` itself is not demonstrated
there.

## Examples

``` r
# View simple HTML content
html_content <- "<h1>Hello World</h1><p>This is a test.</p>"
if (FALSE) { # \dontrun{
view_html(html_content)
} # }
```
