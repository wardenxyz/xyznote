// Example: All admonition directives available in xyznote
// Each directive includes a usage snippet for quick reference.

#import "../src/lib.typ": *

#show: xyznote.with(
  title: "All Directives",
  author: "xyznote",
  abstract: "Complete reference of every admonition directive",
  createtime: "2025-01-01",
  lang: "en",
)

= Original Directives

== Task

```typ
#task[ Your content here. ]
```

#task[
  A task box for writing assignments and checklists. Styled in blue.
]

== Definition

```typ
#definition[ Your content here. ]
```

#definition[
  A definition box for conceptual definitions. Styled in green.
]

== Brainstorming

```typ
#brainstorming[ Your content here. ]
```

#brainstorming[
  A brainstorming box for creative ideation. Styled in orange.
]

== Question

```typ
#question[ Your content here. ]
```

#question[
  A question box for inquiry prompts. Styled in violet.
]

== Chinese Titles

All directives support `lang: "zh"` for Chinese titles.

```typ
#task(lang: "zh")[ 内容 ]
```

#task(lang: "zh")[ 任务框 — 用于写作任务和清单。 ]

#definition(lang: "zh")[ 定义框 — 用于概念定义。 ]

#brainstorming(lang: "zh")[ 头脑风暴框 — 用于创意讨论。 ]

#question(lang: "zh")[ 问题框 — 用于提问和讨论。 ]

= Informational Directives

== Note

```typ
#note[ Your content here. ]
```

#note[
  Highlight supplementary information. Styled in calming blue tones.
]

== Hint

```typ
#hint[ Your content here. ]
```

#hint[
  Provide gentle guidance or helpful suggestions. Styled in teal.
]

== Tip

```typ
#tip[ Your content here. ]
```

#tip[
  Share best practices or shortcuts. Styled in green.
]

== See Also

```typ
#seealso[ Your content here. ]
```

#seealso[
  Reference related documentation, functions, or sections. Styled in indigo.
]

= Warning-Level Directives

== Attention

```typ
#attention[ Your content here. ]
```

#attention[
  Draw the reader's focus to something they might overlook. Styled in amber.
]

== Caution

```typ
#caution[ Your content here. ]
```

#caution[
  Warn about potential pitfalls or non-obvious side effects. Styled in yellow/gold.
]

== Warning

```typ
#warning[ Your content here. ]
```

#warning[
  Indicate something that could cause problems if ignored. Styled in orange.
]

== Important

```typ
#important[ Your content here. ]
```

#important[
  Emphasize critical information that must not be missed. Styled in pink/red.
]

= Danger-Level Directives

== Danger

```typ
#danger[ Your content here. ]
```

#danger[
  Alert about actions that could cause data loss or system damage. Styled in red.
]

== Error

```typ
#error[ Your content here. ]
```

#error[
  Document known error conditions or common mistakes. Styled in bright red.
]

= Utility Directives

== Todo

```typ
#todo[ Your content here. ]
```

#todo[
  Mark items that need future work or follow-up. Styled in yellow/gold.
]

== Generic Admonition

```typ
#generic-admonition[ Your content here. ]
#generic-admonition(title: "Custom Title")[ With a custom title. ]
```

#generic-admonition[
  A flexible callout for anything that doesn't fit standard categories. Styled in grey.
]

#generic-admonition(title: "Custom Title")[
  Generic admonitions accept a custom title for any purpose.
]

= Versioning Directives

== Version Added

```typ
#versionadded("2.0")[ Description of what was added. ]
```

#versionadded("2.0")[
  The expanded admonition module was added with all directive types.
]

== Version Changed

```typ
#versionchanged("2.1")[ Description of what changed. ]
```

#versionchanged("2.1")[
  The `admonition` function now supports `title-size` and `body-size` parameters.
]

== Deprecated

```typ
#deprecated("1.0")[ Description of what was deprecated. ]
```

#deprecated("1.0")[
  The old `colorbox` function has been replaced by the new `admonition` system.
]

= Utility Boxes

== Tip Box

```typ
#tipbox[ Your content here. ]
```

#tipbox[
  A lightweight blue information box with a left border accent and smaller font (10.5pt).
]

== Mark Box

```typ
#markbox[ Your content here. ]
```

#markbox[
  A green-bordered highlight box for key passages or important results.
]

= Section Divider

```typ
#sectionline
```

#sectionline

Content below the section line.

= Customization

All directives accept these optional parameters:

```typ
#note(
  title: "Custom Title",     // override the default title
  title-size: 1.3em,         // title font size
  body-size: 1.0em,          // body font size
  primary-color: rgb("#7c3aed"),   // left border color
  secondary-color: rgb("#ede9fe"), // background color
  tertiary-color: rgb("#5b21b6"),  // title text color
  text-color: rgb("#333"),         // body text color
  emoji: emoji.rocket,       // custom emoji
  dotted: true,              // dotted border instead of solid
  lang: "zh",                // "en" or "zh"
)[ Your content here. ]
```

#note(
  title: "Custom Example",
  title-size: 1.3em,
  body-size: 1.0em,
  primary-color: rgb("#7c3aed"),
  secondary-color: rgb("#ede9fe"),
  tertiary-color: rgb("#5b21b6"),
  emoji: emoji.rocket,
  dotted: true,
)[
  A fully customized note with purple colors, larger title, dotted border, and a rocket emoji.
]

== Global Size Defaults

Set sizes globally for all directives at once:

```typ
#set-admonition-defaults(title-size: 0.95em, body-size: 1.0em)
```

#set-admonition-defaults(title-size: 0.95em, body-size: 1.0em)

#warning[
  This warning uses the global size override. All directives after `set-admonition-defaults` use these sizes unless individually overridden.
]

#tip(title-size: 1.4em)[
  Per-call overrides still take priority over the global default.
]
