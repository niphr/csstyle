# View HTML in the RStudio viewer

Opens HTML content in the RStudio viewer pane.

## Usage

``` r
view_html(x)
```

## Arguments

- x:

  Character string. The HTML content to show.

## Value

Nothing (called for side effects).

## See also

[`vignette("csstyle")`](https://niphr.github.io/csstyle/articles/csstyle.md)
gives an overview of the package. It does not demonstrate `view_html()`.

## Examples

``` r
# View simple HTML content
html_content <- "<h1>Hello World</h1><p>This is a test.</p>"
if (FALSE) { # \dontrun{
view_html(html_content)
} # }
```
