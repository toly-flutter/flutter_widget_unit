#### OverflowBox:单子-溢出-布局

##### 1.Widget支：

```
Widget 
    |---RenderObjectWidget
        |---SingleChildRenderObjectWidget
            |---OverflowBox
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---basic.dart:2381
```


---


##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
[alignment](https://github.com/FlutterJourney/flutter_widget_unit/blob/master/Flutter属性集/alignment:AlignmentGeometry.md)| AlignmentGeometry|Alignment.center|对齐
minWidth | double|--|最小宽
maxWidth | double|--|最大宽
minHeight | double|--|最小高
maxHeight | double|--|最大高
child | Widget|--|被包裹组件

---

##### 4.基本使用

> OverflowBox可以控制孩子突破父亲的限制，有节制的放飞自我。

![](https://user-gold-cdn.xitu.io/2019/7/10/16bd968e6c1057cc?w=1398&h=447&f=png&s=40312)

```
---->[情景1:默认情况]----
孩子:"爸,我要200块零花钱。"  
父亲:"不行，还是原来那样，给你100",然后孩子只能拿到一百块 

var bigChild=Container(//孩子
  color: Color(0x88FF0000),//这里将���子透明度变为一半
  width: 200.0,
  height: 200.0,
);

var smallFather=Container(//父亲
    color: Colors.black,
    width: 100.0,
    height: 100.0,
    child: overflowBox
);

---->[情景2:有OverflowBox]----
孩子:"爸,我要200块零花钱。"  
父亲:"不行，还是原来那样，给你100"
舅舅:"别这么小气嘛，真是的,给孩子多点呗",于是孩子获得了200块

var bigChild=Container(//孩子
  color: Color(0x88FF0000),//这里将孩子透明度变为一半
  width: 200.0,
  height: 200.0,
);

var overflowBox=OverflowBox(//舅舅
alignment: Alignment.topLeft,
maxWidth: 200.0,
maxHeight: 150.0,
child: bigChild,
);

var smallFather=Container(//父亲
    color: Colors.black,
    width: 100.0,
    height: 100.0,
    child: overflowBox
);

---->[情景3:OverflowBox限制孩子宽高]----
孩子:"爸,我要300块零花钱。"  
父亲:"不行，还是原来那样，给你100"
舅舅:"别这么小气嘛，真是的,给孩子多点呗,但300太多了,最多给200",
于是孩子获���了200块

var bigChild=Container(//孩子
  color: Color(0x88FF0000),//这里将孩子透明度变为一半
  width: 300.0,
  height: 300.0,
);
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)