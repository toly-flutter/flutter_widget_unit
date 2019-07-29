#### SizedOverflowBox:单子-溢出+尺寸-布局

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---SizedOverflowBox
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2476
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
size|Size|--|适应模式
[alignment](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/alignment:AlignmentGeometry.md)| AlignmentGeometry|Alignment.center|对齐
child | Widget|--|被包裹组件

---

##### 4.基本使用

> 这个就比较有意思了,首先它能脱离父亲的控制，其次它还能根据size属性调整位置


![](https://user-gold-cdn.xitu.io/2019/7/10/16bd9af9e853a037?w=960&h=370&f=png&s=18378)

```
var child=Container(//孩子
  color: Color(0x88FF0000),//这里将孩子透明度变为一半
  width: 50.0,
  height: 50.0,
);

var sizedOverflowBox = SizedOverflowBox(
  size: Size(50, -50),
  child: child,
);

var father=Container(//父亲
    color: Colors.grey,
    alignment: Alignment.bottomRight,
    width: 100.0,
    height: 100.0,
    child: sizedOverflowBox
);
```
---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)