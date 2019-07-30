
#### Baseline:单子-基线-容器

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---Baseline
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2774
```


---



##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
baseline|double|！！！|基线位置
[baselineType](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter属性集/baselineType:TextBaseline.md)|TextBaseline|！！！|基线位置
child| Widget|--|被包裹组件

---

##### 4.基本使用
>这个组件主要针对文字的基线，通过调整基线大小来改变文字的位置，如下

![](https://user-gold-cdn.xitu.io/2019/7/10/16bdb6ed0376491b?w=1736&h=521&f=png&s=51143)

```
var childBox = Text(//孩子组件
  'Toly',
  style: TextStyle(fontSize: 30),
);
var baseline = Baseline(//布局组件Baseline
  child: childBox,
  baseline: 68,
  baselineType: TextBaseline.alphabetic
);
var fatherBox = Container(//父亲组件
  width: 110,
  height: 68,
  color: Colors.grey,
  child: baseline,
);
```



---


>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)