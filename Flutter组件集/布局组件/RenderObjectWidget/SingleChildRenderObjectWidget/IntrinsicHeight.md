#### IntrinsicHeight:单子-固有高-布局

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---IntrinsicHeight
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2749
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
child | Widget|--|被包裹组件

---

##### 4.基本使用
> 在Row里通过stretch使Row水平伸展，通过IntrinsicHeight可以保持原来的体型  

![](https://user-gold-cdn.xitu.io/2019/7/12/16be3abcb2ce5167?w=1233&h=795&f=png&s=22308)

```
var child = Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.cyanAccent,
    )
  ],
);
//布局组件IntrinsicWidth
var intrinsicHeight = IntrinsicHeight(
  child: child,
);
```


---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)