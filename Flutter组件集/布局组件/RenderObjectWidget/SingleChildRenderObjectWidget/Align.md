
#### Align:单子-对齐-容器
##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---Align
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:1707
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
[alignment](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter属性集/alignment:AlignmentGeometry.md)|AlignmentGeometry|Alignment.center|对齐方式
widthFactor | double|--|宽因子
heightFactor | double|--|高因子
child| Widget|--|被包裹组件

---

##### 4.基本使用
>Align作为一个单控布局组件,可以控制孩子和父亲的相对位置  
主要通过alignment属性实现，具体情况如下图：

![](https://user-gold-cdn.xitu.io/2019/7/10/16bda8f895b4767b?w=2205&h=619&f=png&s=48760)

```
var childBox = Container(//孩子组件
  width: 40,
  height: 40,
  color: Colors.cyanAccent,
);
var align = Align(//布局组件Align
  alignment: Alignment.center,
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


- `widthFactor和heightFactor属性`
> 当父亲的宽高未被约束，父亲的宽高可以通过孩子的宽高进行计算  
使用widthFactor和heightFactor,如下，分别是5倍和2倍

![](https://user-gold-cdn.xitu.io/2019/7/10/16bda9c2b105e0ce?w=944&h=410&f=png&s=14758)

```
var childBox = Container(//孩子组件
  width: 40,
  height: 40,
  color: Colors.cyanAccent,
);
var align = Align(//布局组件Align
  widthFactor: 5,
  heightFactor: 2,
  alignment: Alignment.topLeft,
  child: childBox,
);
var fatherBox = Container(//父亲组件宽高未指定时
  color: Colors.grey,
  child: align,
);
```

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)