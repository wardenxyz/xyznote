#import "template.typ": *

#show: note.with(
  title: "Note",
  author: "wardenxyz",
  abstract: "一个简单的Typst笔记模板",
  createtime: "2024-11-27",
  bibliography-file: "ref.bib",
)

= 介绍

这是一个简单的Typst笔记模板，用于记录一些笔记

== 字体字号

字体可以 `mian.typ` 前面的参数中修改

== 页边距、字间距、行间距

页边距在 `template.typ` 100 处行修改

字间距、行间距在 `template.typ` 152 处行修改

== 段落缩进

段落缩进在 `template.typ` 142 处行修改

== 代码块样式

`inline code`

```typst
code block
``` 

== 绿色强调框

```typst
#green_rect[

]
```

效果如下：

#green_rect[
  被绿色框框包裹的内容
]

= 鸣谢

本笔记模板用到了以下三个项目的代码

https://github.com/gRox167/typst-assignment-template @typst-assignment-template

https://github.com/DVDTSB/dvdtyp @dvdtyp

https://github.com/a-kkiri/SimpleNote @SimpleNote