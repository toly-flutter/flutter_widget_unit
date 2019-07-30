
##### 1.alignment属性
> 其对象属于:AlignmentGeometry类，两个double属性

```
---->[类衍生关系]----
AlignmentGeometry
    |---AlignmentDirectional
        |---AlignmentDirectional
    |---AlignmentDirectional

---->[类的位置]----
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:1738
```

---

##### 2.目前发现于持有该属性的组件有:FractionallySizedBox
 | |||||
---|---|---|---|---
[Align](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter组件集/布局组件//RenderObjectWidget/SingleChildRenderObjectWidget/Align.md)| [Container](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter组件集/布局组件/StatelessWidget/Container.md)|[Image](null)|[FittedBox](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/FittedBox.md)| [OverflowBox](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/OverflowBox.md)
[FractionallySizedBox](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter组件集/布局组件/RenderObjectWidget/SingleChildRenderObjectWidget/FractionallySizedBox.md)| -|-|-|-

---
##### 3.alignment属性使用
> 常用Alignment进行操作，其有九个静态常量

![](https://user-gold-cdn.xitu.io/2019/7/10/16bda8f895b4767b?w=2205&h=619&f=png&s=48760)

```
static const Alignment topLeft = Alignment(-1.0, -1.0);
static const Alignment topCenter = Alignment(0.0, -1.0);
static const Alignment topRight = Alignment(1.0, -1.0);
static const Alignment centerLeft = Alignment(-1.0, 0.0);
static const Alignment center = Alignment(0.0, 0.0);
static const Alignment centerRight = Alignment(1.0, 0.0);
static const Alignment bottomLeft = Alignment(-1.0, 1.0);
static const Alignment bottomCenter = Alignment(0.0, 1.0);
static const Alignment bottomRight = Alignment(1.0, 1.0);
```

---




>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)