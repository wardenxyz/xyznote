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

正文字体、字号在 `template` 113 行处修改

代码字体在 `template` 142 行处修改

页边距在 `template` 98 行处修改

字间距、行间距在 `template` 155 行处修改

段落缩进在 `template` 144 行处修改

封面字体字号在 `template` 39 行处修改

参考文献字体字号在 `template` 160 行处修改

段落缩进在 `template.typ` 145 处行修改

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