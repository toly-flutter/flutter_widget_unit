#### LimitedBox:单子-限制-布局

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---FittedBox
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2321
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
maxWidth | double|--|最大宽
maxHeight| double|--|最大高
child | Widget|--|被包裹组件

---

##### 4.基本使用

> 源码中一句:`A box that limits its size only when it's unconstrained.`  
讲得很有灵性,LimitedBox作用于未被约束的尺寸来限定他的尺寸。

![](https://user-gold-cdn.xitu.io/2019/7/9/16bd67297a859302?w=682&h=428&f=png&s=25651)

```
var limitedBoxSon = LimitedBox(
  maxWidth: 50,
  maxHeight: 50,
  child: Container(
    color: Colors.cyanAccent,
  ),
);

var limitedBoxTest = Column(
  children: <Widget>[limitedBoxSon],
);
```

> 可以注意这里的宽的限定并未生效，所以宽度是已经被���束的尺寸。

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)