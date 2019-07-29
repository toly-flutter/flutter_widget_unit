
#### Offstage:单子显隐容器组件

---

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---Offstage
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2555
```


---



##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
offstage|bool|false|是否隐藏
child | Widget|--|被包裹组件

---

##### 4.基本使用
>这个非常简单，通过offstage属性可以控制一个组件的显示(false)和隐藏(true)

![](http://user-gold-cdn.xitu.io/2019/7/10/16bdb4858fb27dfa?w=897&h=309&f=png&s=20373)

```
var childBox = Container(//孩子组件
  width: 40,
  height: 40,
  color: Colors.cyanAccent,
);
var offstage = Offstage(//布局组件Offstage
  child: childBox,
  offstage: false,
);
var fatherBox = Container(//父亲组件
  padding:EdgeInsets.all(10) ,
  width: 110,
  height: 68,
  color: Colors.grey,
  child: offstage,
);
```

---


>本项目由`张��捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)