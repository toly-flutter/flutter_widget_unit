
#### AspectRatio:单子-比例-容器

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---AspectRatio
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2639
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
aspectRatio|double|--|比例
child | Widget|--|被包裹组件

---

##### 4.基本使用

>AspectRatio会尝试将子元素的大小调整到特定的长宽比。

![](https://user-gold-cdn.xitu.io/2019/7/9/16bd6477c3385638?w=976&h=402&f=png&s=17119)

---


```
var child = Container( //孩子组件
  color: Colors.cyanAccent,
);
var aspectRatio = AspectRatio( //布局组件AspectRatio
  aspectRatio: 4 / 3,
  child: child,
);
var father = Container( //父亲组件
  width: 200,
  child: aspectRatio,
);
```

---


>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)