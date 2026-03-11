// Example: Using the color palette for custom directive themes
// Shows how to leverage colors.typ to create themed directives.

#import "../src/lib.typ": *

#show: xyznote.with(
  title: "Color Themes",
  author: "xyznote",
  abstract: "Creative color combinations for directives",
  createtime: "2025-01-01",
  lang: "en",
)

= Themed Directives Using the Color Palette

The `colors.typ` module provides a rich palette. Use it to create visually distinct directive themes.

== Ocean Theme

#note(
  primary-color: cyan.A,
  secondary-color: cyan.D,
  tertiary-color: cyan.A,
  emoji: emoji.wave,
)[
  An ocean-themed note using the cyan color family.
]

#tip(
  primary-color: blue.A,
  secondary-color: blue.D,
  tertiary-color: blue.A,
  emoji: emoji.anchor,
)[
  A deep-sea tip using the blue color family.
]

== Forest Theme

#note(
  primary-color: green.A,
  secondary-color: green.D,
  tertiary-color: green.A,
  emoji: emoji.tree.evergreen,
)[
  A forest-themed note using the green color family.
]

#tip(
  primary-color: camo.B,
  secondary-color: camo.D,
  tertiary-color: camo.A,
  emoji: emoji.seedling,
)[
  A mossy tip using the camo color family.
]

== Berry Theme

#warning(
  primary-color: purple.B,
  secondary-color: purple.D,
  tertiary-color: purple.A,
  emoji: emoji.grapes,
)[
  A berry-themed warning using the purple color family.
]

#danger(
  primary-color: pink.B,
  secondary-color: pink.D,
  tertiary-color: pink.A,
  emoji: emoji.cherries,
)[
  A cherry-themed danger box using the pink color family.
]

== Warm Tones

#attention(
  primary-color: brown.B,
  secondary-color: brown.D,
  tertiary-color: brown.A,
  emoji: emoji.coffee,
)[
  A warm attention box using the brown color family.
]

#caution(
  primary-color: maroon.B,
  secondary-color: maroon.D,
  tertiary-color: maroon.A,
  emoji: emoji.leaf,
)[
  An autumn caution box using the maroon color family.
]

== Monochrome Variations

#generic-admonition(
  title: "Light Grey",
  primary-color: grey.C,
  secondary-color: grey.D,
  tertiary-color: grey.A,
)[
  A light monochrome box — minimal and clean.
]

#generic-admonition(
  title: "Dark Grey",
  primary-color: grey.A,
  secondary-color: rgb("#e8e8e8"),
  tertiary-color: grey.A,
  text-color: grey.E,
)[
  A darker monochrome box with muted body text.
]

= Size Variations Gallery

Showing the same directive at different font scales.

#note(title-size: 0.8em, body-size: 0.8em, title: "Extra Small")[
  Compact size for sidebar annotations or margin notes.
]

#note(title: "Standard")[
  Default sizing — balanced for body text.
]

#note(title-size: 1.4em, body-size: 1.3em, title: "Large")[
  Large size for hero callouts or section introductions.
]

#note(title-size: 1.8em, body-size: 1.5em, title: "Extra Large")[
  Extra large for presentation slides or poster-style layouts.
]

= Border Style Comparison

#tip(title: "Solid Border")[
  The default solid left border.
]

#tip(dotted: true, title: "Dotted Border")[
  The dotted border variant — softer and less visually heavy.
]
