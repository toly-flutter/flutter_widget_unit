
#### Padding:单子内边距容器组件

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---Padding
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:1545
```


---



##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
[padding](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter属性集/padding:EdgeInsetsGeometry.md)|EdgeInsetsGeometry|！！！|内边距
[child](null)| Widget|--|被包裹组件

---

##### 4.基本使用
>Padding唯一的作用就是让父亲产生内边距,从而改变孩子的行为。


![](http://user-gold-cdn.xitu.io/2019/7/10/16bdb2f9ed14ab14?w=788&h=240&f=png&s=15602)



```
var childBox = Container(//孩子组件
  width: 40,
  height: 40,
  color: Colors.cyanAccent,
);
var padding = Padding(//布局组件Padding
  child: childBox,
  padding: EdgeInsets.all(10),
);
var fatherBox = Container(//父亲组件
  width: 110,
  height: 68,
  color: Colors.grey,
  child: padding,
);
```



---


>本项目由`张风捷特烈`总��归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)