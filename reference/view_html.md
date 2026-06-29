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

## Examples

``` r
# View simple HTML content
html_content <- "<h1>Hello World</h1><p>This is a test.</p>"
if (FALSE) { # \dontrun{
view_html(html_content)
} # }
```
