#### ConstrainedBox:单子-约束-布局

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---Align
                |---Center
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:1797
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
[constraints](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/constraints:BoxConstraints.md) | BoxConstraints |--|宽因子
child | Widget|--|被包裹组件

---

##### 4.基本使用

>ConstrainedBox 通过constraints属性使用BoxConstraints对象来指定四个值  
从而对子元素进行约束,四个值分别是最大宽,最大高,最小宽,最小高。


![](https://user-gold-cdn.xitu.io/2019/7/9/16bd727ffccc6dd6?w=676&h=236&f=png&s=17846)

```
var constrainedBox=ConstrainedBox(
  constraints: const BoxConstraints(
    maxWidth: 200,
    maxHeight: 200,
    minWidth: 150,
    minHeight: 50
  ),
  child: const Card(child: Text('Hello World!')),
);

```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)