®#### Text:文字

##### 1.Widget支：




```
Widget 
    |---StatelessWidget
        |---Text
```

---

##### 2.在SDK中的位置

```
flutter/packages/flutter/lib/src
    |---widgets
        |---text.dart:231
```


---
  /// The [data] parameter must not be null.
  const Text(
    this.data, {
    Key key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
  }) : assert(

##### 3.所有属性

属性名 | 类型 | 默认|含义
---|---|---|---
data | String |!!!|文字
[style](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter属性集/style:TextStyle.md)| TextStyle |--|文字样式
[strutStyle](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter属性集/strutStyle:StrutStyle.md)| StrutStyle |--|--
[textDirection](null)| TextDirection |--|文字装饰
child | Widget|--|被包裹组件

//TODO 待完成

---

##### 4.基本使用

>FittedBox可以让其子元素和其父元素产生布局关系，可以说是个中间人  
其中布局关系用[fit](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter属性集/fit:BoxFit.md)属性和[alignment](https://github.com/toly-flutter/flutter_widget_unit/blob/master/Flutter属性集/alignment:AlignmentGeometry.md)控制  

![](https://user-gold-cdn.xitu.io/2019/7/9/16bd65531d3dcfaa?w=911&h=298&f=png&s=16249)

```
var child = Container(//孩子组件
  width: 50.0,
  height: 50.0,
  color: Colors.cyanAccent,
);

var fittedBox = FittedBox(//布局组件FittedBox
  fit: BoxFit.contain,
  alignment: Alignment.center,
  child: child,
);

var father = Container(//父亲组件
  width: 200,
  height: 100,
  child: fittedBox,
  color: Colors.grey,
);
```

---

>本项目由`张风捷特烈`总结归纳，有问题可issues,想要交流可微信：`zdl1994328`  
更多精彩技术博客，详见 [张风捷特烈的掘金专栏](https://juejin.im/user/5b42c0656fb9a04fe727eb37)