#### Center:单子-居中-布局

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
widthFactor | double|--|宽因子
heightFactor | double|--|高因子
child | Widget|--|被包裹组件

---

##### 4.基本使用

>继承自[Align](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter组件集/布局组件//RenderObjectWidget/SingleChildRenderObjectWidget/Align.md),相当于精简版的Align,功能较单一,可以将孩子置于父亲的中间 。
当父亲没有宽高时，Center也具有widthFactor和heightFactor的功能


![](https://user-gold-cdn.xitu.io/2019/7/10/16bdb1f3b83ef1f5?w=680&h=234&f=png&s=11480)

```
var childBox = Container(//孩子组件
  width: 40,
  height: 40,
  color: Colors.cyanAccent,
);
var align = Center(//布局组件Center
  child: childBox,
);
var fatherBox = Container(//父亲组件
  width: 110,
  height: 68,
  color: Colors.grey,
  child: align,
);
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)