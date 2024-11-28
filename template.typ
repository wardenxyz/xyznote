#let note(
  title: "",
  author: "",
  abstract: "",
  createtime: "",
  en-font: "",
  zh-font: "",
  codefont: "",
  body,
  bibliography-file: none,
) = {
  set text(lang: "zh")

  set document(
    author: author,
    date: auto,
    title: title,
  )

  set page(margin: (
    top: 5cm, //封面标题上边距
    bottom: 5cm, //封面标题下边距
  ))

  set heading(numbering: "1.")
  show heading: it => {
    set text(font: "Times New Roman")
    set par(first-line-indent: 0em)

    if it.numbering != none {
      text(rgb("#2196F3"), weight: 500)[#sym.section]

      text(rgb("#2196F3"))[#counter(heading).display() ]
    }
    it.body
    v(0.6em)
  }

  //封面
  align(right)[
    #set text(font: ("Times New Roman", "SimHei"), lang: "zh")
    #block(text(weight: 700, 40pt, title))
    #line(length: 100%, stroke: 3pt)
    #v(1em, weak: true)
  ]

  align(right)[#abstract]

  align(bottom + center)[
    #set text(size: 15pt)
    *#author* //作者
  ]

  align(bottom + center)[
    #set text(size: 15pt)
    *#createtime* //创建时间
  ]
  //封面


  set outline(fill: repeat[~.], indent: 1em)

  show outline: set heading(numbering: none)
  show outline: set par(first-line-indent: 0em)

  show outline.entry.where(level: 1): it => {
    text(font: "Times New Roman", rgb("#2196F3"))[#strong[#it]]
  }
  show outline.entry: it => {
    h(1em)
    text(font: "Times New Roman", rgb("#2196F3"))[#it]
  }

  set page(
  //页眉
  header: locate(loc => {
    set text(font: ("Libertinus Serif", "kaiti"))
    if loc.page() == 1{return}

    let elems = query(heading.where(level: 1).after(loc))

    let chapter-title = ""

    if(elems == () or elems.first().location().page() != loc.page()){
      let elems = query(heading.where(level: 1).before(loc))
      chapter-title = elems.last().body
    }else{
      chapter-title = elems.first().body
    }
    if calc.even(loc.page()) == true {
      h(1fr) + emph(chapter-title)
    }else{
      h(1fr) + emph(chapter-title)
    }

    v(-8pt)
    align(center)[#line(length: 105%, stroke: (thickness: 1pt, dash: "solid"))]
  }),
  )

  //正文页边距
  set page(margin: (
    top: 2cm, //上边距
    bottom: 2cm, //下边距
    right: 2cm, //右边距
    left: 2cm, //左边距
  ))

  pagebreak()

  outline()

  pagebreak()

  set text(font: (en-font, zh-font), lang: "zh", region: "cn")

  set page(
    numbering: "1 / 1", //页码
    number-align: right,
  )
  counter(page).update(1)

  set quote(block: true) //开启引用块

  // codeblock
  show raw.where(block: true): block.with(
    fill: luma(87.45%),   // 设置背景颜色
    inset: 7pt,         // 设置内边距
    radius: 2pt,         // 设置圆角半径
    width: 100%,         // 设置宽度为 100%
  )
  //inlinecode
  show raw.where(block: false): box.with(
    fill: luma(87.45%),   // 设置背景颜色
    inset: 2pt, // 设置内边距
    outset: (y: 1.5pt),   // 设置上下的外边距
    radius: 2pt,        // 设置圆角半径
  )

  show raw: set text(font: codefont) //修改代码字体

  //段落缩进
  // set par(
  //   justify: true,
  //   first-line-indent: 1em,
  // )

  //链接下划线
  show link: {
    underline.with(stroke: blue, offset: 2pt)
  }

  // set text(tracking: 1pt) //字间距
  // set par(leading: 1pt) //行间距

  body

  if bibliography-file != none {
    set text(font: ("Libertinus Serif","KaiTi")) //设置参考文献字体
    pagebreak()
    show bibliography: set text(10.5pt)
    bibliography(bibliography-file, title: "参考文献", style: "gb-7714-2015-numeric")
  }
}

// 绿框框强调
#let green_rect = counter("green_rect")
#let green_rect(body) = {
  block(
    fill: rgb(250, 255, 250),
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    stroke: rgb(31, 199, 31),
    body,
  )
}
