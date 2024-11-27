#import "template.typ": *

#show: note.with(
  title: "Note",
  author: "wardenxyz",
  abstract: "一个简单的Typst笔记模板",
  createtime: "2024-11-27",
  en-font: "Libertinus Serif",
  zh-font: "microsoft yahei",
  codefont: "jetbrains mono",
)

= 介绍

这是一个简单的Typst笔记模板，用于记录一些笔记

字体可以在上面的参数中修改

页边距在 `template.typ` 100 处行修改

字间距、行间距在 `template.typ` 152 处行修改

我把代码块的样式改了

还有一个绿色强调框

语法如下：

```typst
#green_rect[

]
```

效果如下：

#green_rect[
  被绿色框框包裹的内容
]

没了，就是一个很简单的笔记模板