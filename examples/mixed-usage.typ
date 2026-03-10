// Example: Realistic mixed usage in a technical document
// Shows how directives integrate naturally into documentation.

#import "../src/lib.typ": *

#show: xyznote.with(
  title: "API Documentation",
  author: "xyznote",
  abstract: "Example of directives in a realistic technical document",
  createtime: "2025-01-01",
  lang: "en",
)

= Getting Started

Welcome to the API documentation. This guide walks you through setup and common patterns.

#note[
  This library requires Typst 0.13.1 or later. Ensure your installation is up to date before proceeding.
]

== Installation

Install the package using the Typst package manager:

```
typst install xyznote
```

#tip[
  Add `xyznote` to your project's `typst.toml` dependencies for reproducible builds.
]

== Quick Start

Import the library and wrap your document:

```typst
#import "@preview/xyznote:0.4.0": *

#show: xyznote.with(
  title: "My Notes",
  author: "Author",
)
```

#hint[
  The `lang` parameter defaults to `"zh"`. Set `lang: "en"` for English documents.
]

= API Reference

== Admonition Function

The base `admonition()` function powers all directive types.

#important[
  All color parameters accept any valid Typst color value: `rgb(...)`, named colors, or color operations like `.lighten(90%)`.
]

=== Parameters

#definition(title: "title-size")[
  Controls the font size of the directive title. Accepts any Typst length value. Default: `1.1em`.
]

#definition(title: "body-size")[
  Controls the font size of the directive body text. Accepts any Typst length value. Default: `1.2em`.
]

#definition(title: "primary-color")[
  The color of the left border stripe. Default varies by directive type.
]

== Migration Guide

#versionadded("0.5.0")[
  New admonition directives: `note`, `warning`, `tip`, `danger`, `caution`, `important`, `hint`, `attention`, `error`, `seealso`, `todo`, `generic-admonition`, `versionadded`, `versionchanged`, `deprecated`.
]

#versionchanged("0.5.0")[
  The `admonition` function now accepts `title-size` and `body-size` parameters. Existing code is fully backward-compatible.
]

#deprecated("0.3.0")[
  Direct use of `admonition()` with manual `figure-kind` is discouraged. Use the named directive functions instead (e.g., `note`, `warning`, `tip`).
]

= Troubleshooting

#warning[
  If directives appear without colored borders, ensure you are importing from `src/lib.typ` and not directly from `src/color-box.typ` without `src/colors.typ`.
]

#error[
  Errors about *unknown translation keys* typically mean that `admonition()` tried to look up a label that is not defined for the current language. Check your localization settings or use one of the built-in directive functions instead.
]

#caution[
  When using custom colors, ensure sufficient contrast between `secondary-color` (background) and `text-color` (body text) for readability.
]

= Roadmap

#todo[
  Add collapsible admonition support (requires Typst state management).
]

#todo[
  Create a theme system for one-line color scheme switching across all directives.
]

#seealso[
  - Typst documentation: https://typst.app/docs
  - xyznote repository: https://github.com/wardenxyz/typst_note_template
]

#sectionline

#attention[
  This is a living document. Check back for updates as the library evolves.
]
