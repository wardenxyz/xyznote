// Example: Customizing directive appearance
// Demonstrates how to change colors, font sizes, emojis, and borders.

#import "../src/lib.typ": *

#show: xyznote.with(
  title: "Customization Guide",
  author: "xyznote",
  abstract: "How to customize admonition directives",
  createtime: "2025-01-01",
  lang: "en",
)

= Global Font Size Defaults

Use `set-admonition-defaults` at the top of your document to change the title and body font size for *all* admonitions at once. Individual directives can still override with `title-size` / `body-size`.

== Before Global Override

#note[
  Default title size (1.1em) and body size (1.2em). This is how directives look out of the box.
]

== Apply Global Override

#set-admonition-defaults(title-size: 0.95em, body-size: 1.0em)

#note[
  After calling `set-admonition-defaults(title-size: 0.95em, body-size: 1.0em)`, all directives use the new sizes globally.
]

#warning[
  This warning also uses the global sizes — no per-call parameters needed.
]

== Per-Call Override Still Works

#tip(title-size: 1.5em, body-size: 1.3em)[
  Even with a global default set, passing `title-size` or `body-size` directly overrides it for this single directive.
]

== Reset Back to Original

#set-admonition-defaults(title-size: 1.1em, body-size: 1.2em)

= Per-Directive Font Sizes

The `title-size` and `body-size` parameters control the font size of the title and body independently.

== Default Sizes

#note[
  Default title size (1.1em) and body size (1.2em). This is how directives look out of the box.
]

== Larger Title and Body

#note(title-size: 1.5em, body-size: 1.4em)[
  This note has a *larger* title (1.5em) and body (1.4em). Useful for key callouts that need extra emphasis.
]

== Smaller, Compact Style

#note(title-size: 0.85em, body-size: 0.9em)[
  This note uses a compact style with smaller title (0.85em) and body (0.9em). Ideal for margin notes or dense documentation.
]

= Customizing Colors

Every directive accepts `primary-color` (border), `secondary-color` (background), `tertiary-color` (title text), and `text-color` (body text).

== Custom Purple Note

#note(
  primary-color: rgb("#7c3aed"),
  secondary-color: rgb("#ede9fe"),
  tertiary-color: rgb("#5b21b6"),
)[
  A note with a custom purple color scheme. Override any or all color parameters.
]

== Dark Mode Style

#warning(
  primary-color: rgb("#f59e0b"),
  secondary-color: rgb("#1f2937"),
  tertiary-color: rgb("#fbbf24"),
  text-color: rgb("#e5e7eb"),
)[
  A dark-themed warning box. Set `text-color` to control body text color for contrast.
]

== Monochrome Style

#tip(
  primary-color: rgb("#374151"),
  secondary-color: rgb("#f3f4f6"),
  tertiary-color: rgb("#111827"),
  text-color: rgb("#4b5563"),
)[
  A monochrome tip using only greys. Clean and professional.
]

= Customizing Borders

Use the `dotted` parameter to switch between solid and dotted left borders.

#danger[
  Standard solid border (default).
]

#danger(dotted: true)[
  Dotted border style. Set `dotted: true` for a softer visual appearance.
]

= Custom Emojis

Override the default emoji with any Unicode symbol or Typst emoji/symbol.

#note(emoji: emoji.rocket)[
  A note with a rocket emoji instead of the default memo icon.
]

#warning(emoji: emoji.fire)[
  A fire warning! Custom emojis let you match the tone of your content.
]

#tip(emoji: sym.checkmark)[
  Using a Typst symbol (checkmark) as the emoji. Any content works.
]

= Custom Titles

Override the auto-generated title with any string.

#note(title: "Pro Tip")[
  Custom titles work on every directive type. The title parameter overrides the language-aware default.
]

#warning(title: "Breaking Change")[
  Warnings can be given specific titles relevant to your documentation context.
]

= Language Support

All directives support `lang: "zh"` for Chinese titles and `lang: "en"` for English.

#note(lang: "zh")[
  中文标题的注释框。所有指令都支持中英文切换。
]

#warning(lang: "zh")[
  中文标题的警告框。
]

#tip(lang: "zh")[
  中文标题的提示框。
]

= Combining Customizations

All parameters can be combined freely.

#important(
  title: "Critical Update",
  title-size: 1.4em,
  body-size: 1.1em,
  primary-color: rgb("#dc2626"),
  secondary-color: rgb("#fef2f2"),
  tertiary-color: rgb("#991b1b"),
  dotted: true,
  emoji: emoji.siren,
)[
  This directive combines a custom title, enlarged title font, custom colors, dotted border, and a custom emoji — all at once. The customization system is fully composable.
]
