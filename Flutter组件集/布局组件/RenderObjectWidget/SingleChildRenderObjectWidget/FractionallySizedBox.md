#### FractionallySizedBox:单子-分率-布局

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---FractionallySizedBox
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2216
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
[alignment](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/alignment:AlignmentGeometry.md)| AlignmentGeometry|Alignment.center|对齐
widthFactor| double|--|宽因子
heightFactor| double|--|高因子
child | Widget|--|被包裹组件

---

##### 4.基本使用

> 孩子的宽高分别根据父亲宽高的分率进行计算

![](http://user-gold-cdn.xitu.io/2019/7/10/16bd9c3e947f6784?w=978&h=306&f=png&s=14025)

```
var child =  Container(//孩子
  color: Color(0x88FF0000), //这里将孩子透明度变为一半
);

var fractionallySizedBox =  FractionallySizedBox(
    alignment: Alignment.topLeft,
    widthFactor: 1.5,
    heightFactor: 0.5,
    child: child);

var father = Container(//父亲
    color: Colors.grey,
    alignment: Alignment.bottomRight,
    width: 200.0,
    height: 100.0,
    child: fractionallySizedBox);
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)