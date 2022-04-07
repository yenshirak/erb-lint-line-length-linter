# LineLength linter for ERB Lint

[ERB Lint](https://github.com/Shopify/erb-lint) linter for checking the length of lines. Inspired by the RuboCop [Layout/LineLength](https://docs.rubocop.org/rubocop/cops_layout.html#layoutlinelength) cop.

## Getting Started

Add it to your repository as a submodule:

```
git submodule add https://github.com/yenshirak/erb-lint-line-length-linter.git .erb-linters
```

Configure it in `.erb-lint.yml`:

```yaml
linters:
  LineLength:
    enabled: true
    max: 80 # The default is 120.
```
